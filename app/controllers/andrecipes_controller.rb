class AndrecipesController < ApplicationController
  def index
    @recipes = Recipe.all

    render json: @recipes, status: :ok
  end

  def show
  end

  def new
  end

  def edit
  end
end
