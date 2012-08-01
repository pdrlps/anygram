require "sinatra"
require "instagram"

Instagram.configure do |config|
  config.client_id = "54cb02eb1f784ea4bb750ea7c5abc85a"
  config.client_secret = "70c298f4f3ac4516851c0425d22dbd85"
end

class HomeController < ApplicationController
  def index
  	@photos = Instagram.tag_recent_media('love')
  end
end
