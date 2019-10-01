class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :name
      t.integer :prep_time
      t.integer :cook_time
      t.string :difficulty
      t.integer :serves
      t.text :ingredients
      t.text :method
      t.references :category, foreign_key: true
      t.text :image_url
      t.boolean :featured
      t.text :ingredients_link

      t.timestamps
    end
  end
end
