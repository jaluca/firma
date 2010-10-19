class WorkersController < ApplicationController
  def new
    
  end
  
  def create
  end
  
  def update
  end

  def index
    @workers = Worker.all
  end

  def show
    @worker = Worker.find(params[:id])
  end
  
  def destroy
  end

	
end