class ChangeRecipeIdToBeIntegerInRecipes < ActiveRecord::Migration[5.1]
  def change
	change_column :recipes, :recipe_id, 'integer USING CAST(recipe_id AS integer)'
  end
end
