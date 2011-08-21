class LocationsController < ApplicationController
  def edit
    @location = Location.find(params[:id])
  end

  def index
    @locations = Location.paginate(:per_page => 5, :page => params[:page])
  end

  def new
    @location = Location.new
  end
  def create
    @location = Location.new(params[:location])
    if @location.save
      flash[:notice] = "Successfully created location."
      redirect_to @location
    else
      render :action => 'new'
    end
  end
  def show
    @location = Location.find(params[:id])
  end
  
  def update
    @location = Location.find(params[:id])
    if @location.update_attributes(params[:location])
      flash[:notice] = "Successfully updated location."
      redirect_to @location
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @location = Location.find(params[:id])
    @location.destroy
    flash[:notice] = "Successfully destroyed location."
    redirect_to locations_url
  end
  
end
