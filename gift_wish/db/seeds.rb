# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

password = "password"

User.new 20 do |user|
  user.first_name = Faker::Name.name.first_name
  user.last_name = Faker::Name.name.last_name
  user.email = Faker::Internet.email
  user.username = Faker::Name.name
  user.birth_date = Faker::Date.date
  user.photo_url = Faker::Image.image

  user.encrypted_password = User.new(:password => password).encrypted_password
  # rest of your code here      
end