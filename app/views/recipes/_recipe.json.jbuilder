json.extract! recipe, :id, :name, :prep_time, :cook_time, :difficulty, :serves, :ingredients, :method, :category_id, :image_url, :featured, :ingredients_link, :created_at, :updated_at
json.url recipe_url(recipe, format: :json)
