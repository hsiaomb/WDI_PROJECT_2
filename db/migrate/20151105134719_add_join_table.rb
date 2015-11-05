class AddJoinTable < ActiveRecord::Migration
  def change
    create_join_table :products, :users do |t|
      # t.index [:product_id, :user_id]
      # t.index [:user_id, :product_id]
     drop_table :wishlists,
    end
  end
end
