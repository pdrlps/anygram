class HomeController < ApplicationController
  def index
  	@tag = [:love, :infinity, :olympics, :gold, :silver, :portugal, :football, :soccer, :sports, :athlete, :medal]
  	@photos = Instagram.tag_recent_media(@tag.choice)
  end
end
