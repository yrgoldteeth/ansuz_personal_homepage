class AddPersonalHomePageToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :personal_homepage, :boolean
  end

  def self.down
    remove_column :users, :personal_homepage
  end
end
