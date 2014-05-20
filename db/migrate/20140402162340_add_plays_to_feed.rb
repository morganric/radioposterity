class AddPlaysToFeed < ActiveRecord::Migration
  def change
    add_column :feeds, :plays, :integer, :default => 0
  end
end
