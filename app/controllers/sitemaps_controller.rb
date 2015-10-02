class SitemapsController < ApplicationController

  def index
    @static_pages = [root_url]

    @dailies = Daily.all
    @events = Event.all
    @blogs = Blog.all

    respond_to do |format|
      format.xml
    end
  end

end