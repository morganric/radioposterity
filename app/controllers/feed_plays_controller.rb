class FeedPlaysController < ApplicationController
  after_action :add_play_to_feed, :only => [:create]


  def create

    # @feed_id = params[:feed_id]
    @url = params[:url]
    @feed_id = params[:feed_id]

    feed_play = FeedPlay.new(:feed_id => @feed_id, :url => @url)

    respond_to do |format|
      if feed_play.save
      format.js
      end
    end

  end

  def add_play_to_feed
    @feed_id = params[:feed_id]

    @feed= Feed.find(@feed_id)
    @feed.plays += 1
    @feed.save

  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def feed_params
      params.require(:feed_play).permit(:url, :feed_id, :id)
    end

end