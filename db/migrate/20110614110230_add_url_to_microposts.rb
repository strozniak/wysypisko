class AddUrlToMicroposts < ActiveRecord::Migration
  def self.up
    add_column :microposts, :url, :string
  end

  def self.down
    remove_column :microposts, :url
  end
end
