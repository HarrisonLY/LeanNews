class WelcomeController < ApplicationController
skip_before_action :verify_authenticity_token

def subscribe(optin = false)
gb = Gibbon::API.new("95a9febb4b2d987fc66419798db9d8d2-us10")
gb.lists.subscribe({
       id: '49304ea680',
       :email => {:email => params[:email][:address]},
       double_optin: optin,
    })
 end

end