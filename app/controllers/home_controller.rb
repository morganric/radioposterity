class HomeController < ApplicationController
  def index
    @feeds = Feed.all
    @feeds_parsed = []

    @feeds.each do |feed|
      @feeds_parsed << [RSS::Parser.parse(open(feed.url).read, false), feed]
    end
  end

  def admin
  	@users = User.all
  end

def category
    @category = params[:category]
    @feeds = Feed.where(:category => @category)

  end
end
