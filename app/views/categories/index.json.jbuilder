json.array!(@categories) do |category|
  json.extract! category, :id, :category, :product_id
  json.url category_url(category, format: :json)
end
