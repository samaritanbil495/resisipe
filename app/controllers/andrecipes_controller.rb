class AndrecipesController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index
    @recipes = Recipe.all

    render json: @recipes, status: :ok
  end

  def show
  end
  
  def recipe_params
    params.require(:recipe).permit(:recipe_name, :recipe_detail, :recipe_ingredients, :recipe_tags)
  end

  def new
      Recipe.create(recipe_params)
  end

  def edit
  end
end
