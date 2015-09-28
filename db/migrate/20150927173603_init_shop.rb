class InitShop < ActiveRecord::Migration
  def change
  	create_table :cates do |t|
  		t.string :name
  		t.integer :position
  		t.timestamps

  	end
  	create_table :items do |t|
  		t.integer :status, :limit => 1, :null => false, :default => 0
  		t.string :name
  		t.integer :price
  		t.text :descript
  		t.timestamps
  		t.timestamps :delete_at

  end

  	create_table :orders do |t|
  		t.integer :user_id
  		t.timestamps
  		t.integer :status, :limit => 1, :null => false, :default => 0

  	end

  	create_table :order_items do |t|
  		t.integer :order_id
  		t.integer :item_id
  		t.integer :user_id
  		t.integer :price, :null => false
	end

  add_index :order_items, [:order_id]


end

end

