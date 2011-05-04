class CreateEntries < ActiveRecord::Migration
  def self.up
    create_table :entries do |t|
      t.string :title
      t.string :content
      t.integer :user_id
      t.date :created

      t.timestamps
    end
  end

  def self.down
    drop_table :entries
  end
end
