module FeedsHelper

	require 'rss'

	def parse_feed(feed)

		@rss = RSS::Parser.parse(open(feed.url).read, false)
		feed.title = @rss.channel.title
		feed.description = @rss.channel.description
		feed.link = @rss.channel.link
		feed.category = @rss.channel.itunes_category.text
		feed.image = @rss.channel.itunes_image.href
		if @rss.channel.itunes_owner
		feed.email = @rss.channel.itunes_owner.itunes_email
		else
		feed.email = ''
		end	
		feed.save

	end
end
