class CreateFeedPlays < ActiveRecord::Migration
  def change
    create_table :feed_plays do |t|
      t.integer :feed_id
      t.string :url

      t.timestamps
    end
  end
end
