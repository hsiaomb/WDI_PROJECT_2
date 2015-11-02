class TableRevert < ActiveRecord::Migration
  	  def change
  	  		create_join_table :products, :wishlists do |t|
  	  		t.index :wishlist_id
  	  		t.index :product_id
  	  	end
  	  	drop_table :products_users
  	  	add_column :products, :user_id, :integer
  	  	add_column :products, :wishlist_id, :integer
  	end
  end

