class CompaniesController < ApplicationController
  def new
    
  end
  
  def create
  end
  
  def update
  end

  def index
    @companies = Company.all
  end

  def show
    @company = Company.find(params[:id])
  end
  
  def destroy
  end

	
end