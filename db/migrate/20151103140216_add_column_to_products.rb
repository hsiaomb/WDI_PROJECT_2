class AddColumnToProducts < ActiveRecord::Migration
  def change
  	add_column :products, :photo, :text
  end
end
