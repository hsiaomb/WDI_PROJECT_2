include Faker

User.delete_all("username != 'michael.hsiao'")
Product.delete_all("title != 'Jordan Eclipse'")

password = "password"

users = []

10.times do
	user = User.create ({ 
		first_name: Name.first_name,
		last_name: Name.last_name,
		photo_url: "http://www.fillmurray.com/200/300",
		username: Internet.user_name,
		email: Internet.email,
		gender: "Male",
		shirt_size: "M",
		birth_date: "1995/07/22",
		shoe_size: "9.5",
		waist_size: "32",
		dress_size: "",
		password: password,
		password_confirmation: password})
	users << user
	user = User.create ({ 
		first_name: Name.first_name,
		last_name: Name.last_name,
		photo_url: "https://www.placecage.com/200/300",
		username: Internet.user_name,
		email: Internet.email,
		gender: "Female",
		shirt_size: "F",
		birth_date: "1992/07/06",
		shoe_size: "6.5",
		waist_size: "8",
		dress_size: "6",
		password: password,
		password_confirmation: password})
	users << user

	product = Product.create ({ 
		title: Commerce.product_name,
		category_id: Number.between(1, 9),
		price: Number.decimal(3, 2),
		product_url: "http://www.amazon.co.uk/",
		photo: "http://ecx.images-amazon.com/images/I/61Su9Gvq-fL._SX522_.jpg",
	user_id: users.sample.id})


	product = Product.create ({ 
		title: Commerce.product_name,
		category_id: Number.between(1, 9),
		price: Number.decimal(3, 2),
		product_url: "http://www.amazon.co.uk/",
		photo: "http://ecx.images-amazon.com/images/I/819R4oLggwL._UY879_.jpg",
	user_id: users.sample.id})

	product = Product.create ({ 
		title: Commerce.product_name,
		category_id: Number.between(1, 9),
		price: Number.decimal(3, 2),
		product_url: "http://www.amazon.co.uk/",
		photo: "http://ecx.images-amazon.com/images/I/41rMfUQjRcL._AC_SY220_.jpg",
	user_id: users.sample.id})

	product = Product.create ({ 
		title: Commerce.product_name,
		category_id: Number.between(1, 9),
		price: Number.decimal(3, 2),
		product_url: "http://www.amazon.co.uk/",
		photo: "http://ecx.images-amazon.com/images/I/51Nl%2B2DhSrL._AC_SY220_.jpg",
		user_id: users.sample.id})




	p user.inspect
	# user.encrypted_password = User.new({:password => password.encrypted_password})

end
