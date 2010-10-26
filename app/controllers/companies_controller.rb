class CompaniesController < ApplicationController
  def new
    @company = Company.new
  end
  
  def create
    Company.create(params[:company])
    redirect_to companies_path
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