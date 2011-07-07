class RenameTimestamp < ActiveRecord::Migration
  def self.up
    rename_column :callbacks, :timestmap, :timestamp
  end

  def self.down
  end
end
