class CreateFeeds < ActiveRecord::Migration
  def change
    create_table :feeds do |t|
      t.string :url, :unique => true
      t.integer :user_id
      t.string :title
      t.text :description
      t.string :category
      t.string :link
      t.string :email
      t.string :image

      t.timestamps
    end
    add_index :feeds, :slug, unique: true
  end
end
