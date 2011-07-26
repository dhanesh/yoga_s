class RenamePublicToPublicFlaginPosts < ActiveRecord::Migration
  def self.up
    rename_column :posts, :public, :public_flag
  end

  def self.down
    rename_column :posts, :public_flag, :public
  end
end
