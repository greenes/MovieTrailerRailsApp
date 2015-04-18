class MoviesController < ApplicationController

  before_action :authenticate_user!

  def index
    @title = Movie.title(params[:query])
    @poster = Movie.poster(params[:query])
    @year = Movie.year(params[:query])
    @actors = Movie.actors(params[:query])
    @plot = Movie.plot(params[:query])
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = current_user.movies.new(title: @title, year: @year, poster_url: @poster, imdb_id: @imdbid)
      if @movie.save
        redirect_to root_path
     end
  end

  def edit
    @movie = Favorite.find(params[:id])
  end


  def update
      @movie = Favorite.find( params[:id] )
    if @movie.update( movie_params )
      redirect_to @movie
    else
      render :edit
    end
  end

  def destroy
    @movie = Favorite.find(params[:id])
    @movie.destroy
    redirect_to movies_path
  end

private
  def movie_params
    params.require(:movie).permit(:title, :year, :poster_url, :imdb_id)
  end




end
