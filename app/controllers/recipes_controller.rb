class RecipesController < ApplicationController
  before_action :current_recipe, only: [:show, :edit, :update, :destroy]

  def index
    @recipes = Recipe.all
  end

  def show

  end

  def new
    @recipe = Recipe.new
  end

  def create

  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def recipe_params
  end

  def current_recipe
  end

end
