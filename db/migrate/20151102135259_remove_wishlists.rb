class RemoveWishlists < ActiveRecord::Migration
  def change
  	drop_table :wishlists 
  	drop_table :products_wishlists
  	remove_column :products, :wishlist_id
  end
end
