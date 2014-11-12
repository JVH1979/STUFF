class WelcomeController < ApplicationController
  before_action :authenticate_user!

  def index
    @records = Record.all
    @movies = Movie.all
  end

end
