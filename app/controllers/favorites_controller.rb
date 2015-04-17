class FavoritesController < ApplicationController

  # before_action :authenticate_user!

  def index
    @favorites = Favorite.all
  end

  def show
    @favorite = Favorite.find(params[:id])
  end

  def new
    @favorite = Favorite.new
  end

  def create
    @favorite = Favorite.new(favorite_params)
      if @favorite.save
        redirect_to @favorite
      else
       render :new
     end
  end

  def edit
    @favorite = Favorite.find(params[:id])
  end


  def update
      @favorite = Favorite.find( params[:id] )
    if @favorite.update( favorite_params )
      redirect_to @favorite
    else
      render :edit
    end
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    @favorite.destroy
    redirect_to favorites_path
  end

private
  def favorite_params
    params.require(:favortie).permit(:title)
  end



end
