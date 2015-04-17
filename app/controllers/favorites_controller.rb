class FavoritesController < ApplicationController

  def index
    @favorites = Favorite.all
  end

  def show
    @favortie = Favorite.find(params[:id])
  end



end
