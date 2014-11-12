class MoviesController < ApplicationController
  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.create movie_params
    redirect_to root_path
  end

  def edit
    @movie = Movie.find params[:id]
  end

  def update
    @movie = Movie.find params[:id]
    @movie.update_attributes movie_params
    redirect_to root_path
  end

  def show
    @movie = Movie.find params[:id]
  end

   def destroy
    @movie = Movie.find params[:id]
    @movie.delete
    redirect_to root_path
  end

private
  def movie_params
    params.require(:movie).permit(:title, :notes)
  end
end
