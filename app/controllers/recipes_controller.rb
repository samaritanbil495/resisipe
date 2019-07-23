class RecipesController < ApplicationController
  before_action :current_recipe, only: [:show, :edit, :update, :destroy]
  protect_from_forgery with: :null_session
  skip_before_action :verify_authenticity_token
  def index
     @recipes = Recipe.searchTag(params[:searchTag])
  end

  def show
    puts @recipe.image
  end

  def new
    if current_user
      @recipe = Recipe.new
      @recipe.recipe_id = current_user.id
      
    else
      @recipe = Recipe.new
    end
 
    
  end

  def create
    recipe = Recipe.create(recipe_params)
    redirect_to recipe_path(recipe)
  end

  def edit

  end

  def update
    @recipe.update(recipe_params)

    redirect_to recipe_path(@recipe)
  end

  def destroy
    @recipe.destroy

    redirect_to recipes_path
  end

  private

  def recipe_params
    params.require(:recipe).permit(:recipe_name, :recipe_detail, :recipe_ingredients, :recipe_tags, :search, :recipe_id, :image, :image_cache)
  end

  def current_recipe
    @recipe = Recipe.find(params[:id])
  end

end
