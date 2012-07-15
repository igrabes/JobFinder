class AddMoreAttributesToCompany < ActiveRecord::Migration
  def self.up
    add_column :companies, :hiring_url, :string
    add_column :companies, :hiring, :boolean
  end

  def self.down
    remove_column :companies, :hiring
    remove_column :companies, :hiring_url
  end
end
