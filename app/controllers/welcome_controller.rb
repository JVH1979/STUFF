class WelcomeController < ApplicationController

  def index
    @records = Record.all
    @movies = Movie.all
  end

end
