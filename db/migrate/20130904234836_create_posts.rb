class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.string :titulo, limit: 255
      t.text :texto

      t.timestamps
    end
  end

  def self.down
    drop_table :posts
  end
end
