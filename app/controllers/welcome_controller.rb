class WelcomeController < ApplicationController

  before_action :authenticate_user!

  def index
    @movies = current_user.movies.all
  end




end
