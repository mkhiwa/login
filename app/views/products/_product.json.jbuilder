json.extract! product, :id, :title, :quantity, :price, :created_at, :updated_at
json.url product_url(product, format: :json)
