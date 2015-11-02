json.array!(@products) do |product|
  json.extract! product, :id, :title, :product_url, :price, :user_id, :category_id, :wishlist_id
  json.url product_url(product, format: :json)
end
