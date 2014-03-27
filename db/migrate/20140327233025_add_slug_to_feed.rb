class AddSlugToFeed < ActiveRecord::Migration
  def change
    add_column :feeds, :slug, :string
  end
end
