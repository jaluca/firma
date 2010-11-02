class WorkersController < ApplicationController
  before_filter :authenticate_user!
  def new
     @worker = Company.find(params[:company_id]).workers.new
  end
  
  def create
    company = Company.find(params[:company_id])
    company.workers.create(params[:worker])
    redirect_to company
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


