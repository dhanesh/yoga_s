class AddActiveAndPersonalDetailsToAccounts < ActiveRecord::Migration
  def self.up
    add_column :accounts, :active_flag, :boolean, :default => true, :null => false
    add_column :accounts, :first_name, :string
    add_column :accounts, :last_name, :string
    add_column :accounts, :username, :string
  end

  def self.down
    remove_column :accounts, :username
    remove_column :accounts, :last_name
    remove_column :accounts, :first_name
    remove_column :accounts, :active_flag
  end
end
