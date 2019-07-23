 class LikesController < ApplicationController
	    before_action :current_recipe
	    skip_before_action :verify_authenticity_token

	   def create
	     if already_liked?
	      flash[:notice] = "You can't like more than once"
	    else
	      @recipe.likes.create(user_id: current_user.id)
	    end
	    redirect_to recipe_path(@recipe)
	   end

	   private
	   def recipe_params
	    params.require(:recipe).permit(:recipe_name, :recipe_detail, :recipe_ingredients, :recipe_tags, :search, :recipe_id, :image, :image_cache)
	  end
	  def already_liked?
	    Like.where(user_id: current_user.id, recipe_id:
	    params[:recipe_id]).exists?
	  end
	   def current_recipe
	    @recipe = Recipe.find(params[:recipe_id])
	  end
	 end
