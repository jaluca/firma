class CompaniesController < ApplicationController
  before_filter :load_company, :except => [:new, :index, :create]

  def new
    @company = Company.new
  end
  
  def create
    @company = Company.new(params[:company])
    if @company.save
      redirect_to companies_path
    else
      render :action => :new
    end
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

