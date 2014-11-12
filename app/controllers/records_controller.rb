class RecordsController < ApplicationController

  def index
    @records = Record.all
  end

  def new
    @record = Record.new
  end

  def create
    @record = Record.create record_params
    redirect_to root_path
  end

  def edit
    @record = Record.find params[:id]
  end

  def update
    @record = Record.find params[:id]
    @record.update_attributes record_params
    redirect_to root_path
  end
  
  def show
    @record = Record.find params[:id]
  end

  def destroy
    @record = Record.find params[:id]
    @record.delete
    redirect_to root_path
  end


private
  def record_params
    params.require(:record).permit(:title, :notes)
  end
end
