json.extract! category, :id, :name, :image_url, :description, :collection_id, :created_at, :updated_at
json.url category_url(category, format: :json)
