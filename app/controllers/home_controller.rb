class HomeController < ApplicationController
  def index
  	@photos = Instagram.tag_recent_media('infinity')
  end
end
