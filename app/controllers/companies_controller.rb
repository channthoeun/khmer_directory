class CompaniesController < ApplicationController
  def edit
  end

  def index
    @letters = Letter.all
    @companies = Company.search(params[:search])
  end

  def new
  end

  def show
    @letter = Letter.find(params[:id])
  end

end
