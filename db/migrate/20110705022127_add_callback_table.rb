class AddCallbackTable < ActiveRecord::Migration
  def self.up
	create_table :callbacks do |t|
		t.string :token
		t.string :customGroup
		t.string :connectedTo
		t.column :timestmap, :datetime
		t.string :type
	end
  end
  def self.down
	drop_table :callbacks
  end
end
