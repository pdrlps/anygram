require "instagram"

class GetController < ApplicationController
  def index
  	Instagram.configure do |config|
  config.client_id = "54cb02eb1f784ea4bb750ea7c5abc85a"
  config.client_secret = "70c298f4f3ac4516851c0425d22dbd85"
end	
  	@t = Tag.where("name LIKE ? ", params[:tag])

  	if @t.empty?
  		@tagg = Tag.new
 		@tagg.hits = 1
  		@tagg.name = params[:tag]
  		@tagg.save
  	else
  		@t.each do |p|
  			p.hits += 1
  			p.save
  		end
  	end
	@photos = Instagram.tag_recent_media(params[:tag])

  end
end
