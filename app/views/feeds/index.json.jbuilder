json.array!(@feeds) do |feed|
  json.extract! feed, :id, :url, :user_id, :title, :description, :category, :link, :email, :image
  json.url feed_url(feed, format: :json)
end
