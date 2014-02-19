class MoviesController < ApplicationController

  def index
    @movies = Movie.all.order("year desc")
  end

  def show
    the_movie_id = params["id"]
    @movie = Movie.find_by :id => the_movie_id
  end

  def destroy
    the_movie_id = params["id"]
    m = Movie.find_by(:id => the_movie_id)
    m.destroy
    redirect_to movies_url
  end

  def new
  end

  def create
    m = Movie.new
    m.title = params["title"]
    m.year = params["year"]
    m.plot = params["plot"]
    m.image_url = params["poster_url"]
    m.director_id = params["director_id"]
    m.save
    redirect_to movies_url
  end

  def edit
    the_movie_id = params["id"]
    @movie = Movie.find_by(:id => the_movie_id)
  end

  def update
    the_movie_id = params["id"]
    movie = Movie.find_by(:id => the_movie_id)
    movie.title = params["title"]
    movie.year = params["year"]
    movie.plot = params["plot"]
    movie.director_id = params["director_id"]
    movie.image_url = params["poster_url"]
    movie.save
    redirect_to movies_url
  end

end
