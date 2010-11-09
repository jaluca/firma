class CompaniesController < ApplicationController
  before_filter :load_company, :except => [:new, :index, :create]
  before_filter :authenticate_user!
  attr_reader :per_page
  
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
    #@companies = Company.all
    @search = Company.search(params[:search])
    @companies = @search.paginate(:page => params[:page], :per_page => 2)  # load all matching records
    # @articles = @search.relation # Retrieve the relation, to lazy-load in view
    # @articles = @search.paginate(:page => params[:page]) # Who doesn't love will_paginate?
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

