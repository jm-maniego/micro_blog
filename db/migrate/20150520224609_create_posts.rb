class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :permalink
      t.text :content
      t.text :teaser

      t.timestamps
    end
  end
end
