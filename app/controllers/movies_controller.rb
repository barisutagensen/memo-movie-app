class MoviesController < ApplicationController

  def index
    @movies = Movie.all
  end
  
  def new
    @movies = Movie.new
  end

  def create
    Movie.create(movie_params)
  end

  private
  def movie_params
    params.require(:movie).permit(:title, :image, :memo, :actor, :director, :genre_id, :evaluation_id).merge(user_id: current_user.id)
  end


end
