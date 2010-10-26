class CompaniesController < ApplicationController
  def new
    @company = Company.new
  end
  
  def create
    Company.create(params[:company])
    redirect_to companies_path
  end

  def index
    @companies = Company.all
  end

  def show
    @company = Company.find(params[:id])
  end
  
  def edit
     @company = Company.find(params[:id])
  end
  
  def update
     company = Company.find(params[:id])
     company.update_attributes(params[:company])
     redirect_to company
   end
  
  def destroy
    company = Company.find(params[:id])
    company.destroy
    redirect_to companies_path
  end

	
end

