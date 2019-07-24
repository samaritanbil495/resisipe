class AndlikesController < ApplicationController
  def index
    @likes = Like.all

    render json: @likes, status: :ok
  end

  def show
  end

  def new
  end

  def edit
  end
end
