class Feed < ActiveRecord::Base
 extend FriendlyId
  friendly_id :title, use: [:slugged, :finders]


end
