class AddRateToProjectsAndUsers < ActiveRecord::Migration
  def change
    add_column :projects, :rate, :integer, :default => 0
    add_column :users, :rate, :integer, :default => 0
  end
end
