class WelcomeController < ApplicationController

  def index
    @records = Record.all
  end

end
