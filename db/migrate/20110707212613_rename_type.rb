class RenameType < ActiveRecord::Migration
  def self.up
    rename_column :callbacks, :type, :callback_type
  end

  def self.down
  end
end
