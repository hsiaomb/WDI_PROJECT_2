class Product < ActiveRecord::Base
	config.assets.compile = true
	belongs_to :category
	has_and_belongs_to_many :users
end
