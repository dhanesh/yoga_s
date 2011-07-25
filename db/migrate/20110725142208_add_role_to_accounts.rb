class AddRoleToAccounts < ActiveRecord::Migration
  def self.up
    add_column :accounts, :role, :string, :default => "user", :null => false
  end

  def self.down
    remove_column :accounts, :role
  end
end
