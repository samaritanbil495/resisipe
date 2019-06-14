class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :recipes do |t|
      t.string :recipe_id
      t.string :recipe_name
      t.string :recipe_detail
      t.string :recipe_ingredients
      t.string :recipe_tags
      t.string :image
      t.timestamps
    end
  end
end
