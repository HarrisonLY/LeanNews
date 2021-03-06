class WelcomeController < ApplicationController
skip_before_action :verify_authenticity_token
before_action :require_admin, only: [:admin, :share, :golden, :contest, :test]
before_filter :disable_nav, only: [:golden]

def subscribe(optin = false)
gb = Gibbon::API.new("95a9febb4b2d987fc66419798db9d8d2-us10")
gb.lists.subscribe({
       id: '49304ea680',
       :email => {:email => params[:email][:address]},
       double_optin: optin,
    })
 end

def admin
  @dailies = Daily.order("created_at desc").page(params[:page]).per_page(3)
  @blogs = Blog.order("created_at desc").page(params[:page]).per_page(3)
  @users = User.order("created_at desc").page(params[:page]).per_page(5)
  @events = Event.order("created_at desc").page(params[:page]).per_page(3)
  @jobs = Job.order("created_at desc").page(params[:page]).per_page(3)
end

def disable_nav
  @disable_nav = true
end

end