class AddLikesToMicroposts < ActiveRecord::Migration
  def self.up
    add_column :microposts, :likes, :integer
  end

  def self.down
    remove_column :microposts, :likes
  end
end
