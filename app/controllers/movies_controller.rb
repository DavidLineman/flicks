class MoviesController < ApplicationController
  def index
    @movies = ["Iron Man", "Spider-Man", "Batman"]
  end
end
