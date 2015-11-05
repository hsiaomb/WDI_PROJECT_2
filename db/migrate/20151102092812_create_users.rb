class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.string :username
      t.date :birth_date
      t.string :shirt_size
      t.string :shoe_size
      t.string :waist_size
      t.string :dress_size
      t.text :photo_url

      t.timestamps null: false
    end
  end
end
