class DropTables < ActiveRecord::Migration
  def up
    drop_table :likes
    drop_table :friends
  end

  def down
  end
end