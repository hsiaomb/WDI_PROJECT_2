class Category < ActiveRecord::Base
	config.assets.compile = true
	has_many :products

end
