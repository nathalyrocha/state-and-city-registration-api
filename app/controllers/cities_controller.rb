class CitiesController < ApplicationController
  def index
    @cities = City.all
  end

  def create
    @city = City.new(city_params)
      
    if @city.save 
      render :create, status: :created
    else
      render json: { errors: @city.errors, status: :unprocessed }
    end
  end

  private

  def city_params
    params.require(:city).permit(:name, :state_id)
  end
end
