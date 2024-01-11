json.extract! content, :id, :title, :body, :publish_date, :created_at, :updated_at
json.url content_url(content, format: :json)
