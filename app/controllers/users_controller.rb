class UsersController < ApplicationController

  def show
    @nickname = current_user.nickname
    @movies = current_user.movies
  end
end
