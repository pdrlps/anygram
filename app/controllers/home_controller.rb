class HomeController < ApplicationController
  def index
  	@t = Tag.order("RANDOM()").first
  	@photos = Instagram.tag_recent_media(@t.name)
  	@tags = Tag.order("hits DESC").limit(8);
  end
end
