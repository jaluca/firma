class CompaniesController < ApplicationController
  before_filter :load_company, :except => [:new, :index, :create]

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
  end
  
  def edit
  end
  
  def update
     @company.update_attributes(params[:company])
     redirect_to @company
   end
  
  def destroy
    @company.destroy
    redirect_to companies_path
  end

private 

	def load_company
	  @company = Company.find(params[:id])
  end
end

