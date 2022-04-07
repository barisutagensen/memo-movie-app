class MoviesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  before_action :set_movie, only: [:show, :edit, :update, :destroy]
  before_action :move_to_index, only: [:edit, :update, :destroy]

  def index
    @movies = Movie.includes(:user)
  end
  
  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
       redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @movie.update(movie_params)
      redirect_to movie_path(@movie.id)
    else
      render :edit
    end
  end

  def destroy
    @movie.destroy
    redirect_to root_path
  end

  private
  def movie_params
    params.require(:movie).permit(:title, :image, :memo, :actor, :director, :genre_id, :evaluation_id).merge(user_id: current_user.id)
  end

  def move_to_index
    redirect_to action: :index unless @movie.user_id == current_user.id
  end

  def set_movie
    @movie = Movie.find(params[:id])
  end
  
end
