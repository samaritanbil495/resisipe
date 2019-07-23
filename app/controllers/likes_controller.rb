class LikesController < ApplicationController
    before_action :current_recipe
    skip_before_action :verify_authenticity_token

   def create
      @recipe.likes.create(user_id:1)
  
    redirect_to recipe_path(@recipe)
   end
 
   private
   def recipe_params
    params.require(:recipe).permit(:recipe_name, :recipe_detail, :recipe_ingredients, :recipe_tags, :search, :recipe_id, :image, :image_cache)
  end
   def current_recipe
    @recipe = Recipe.find(params[:recipe_id])
  end
 end