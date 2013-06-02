class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.references :user
      t.integer :project_id
      t.integer :human_id

      t.timestamps
    end
    add_index :likes, :user_id
  end
end
