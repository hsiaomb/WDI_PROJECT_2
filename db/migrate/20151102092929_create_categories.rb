class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :category
      t.integer :product_id

      t.timestamps null: false
    end
  end
end
