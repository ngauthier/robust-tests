class CreatePostBodies < ActiveRecord::Migration
  def self.up
    create_table :post_bodies do |t|
      t.references :post
      t.text :body

      t.timestamps
    end
    remove_column :posts, :body
  end

  def self.down
    add_column :posts, :body
    drop_table :post_bodies
  end
end
