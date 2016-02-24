class Api::V1::LocationsController < ApplicationController
  def index
    @locations = Location.all
  end

  def create
    @location = Location.create(city: params[:city], state: params[:state], street_address: params[:street_address], zipcode: params[:zipcode], country: params[:country])

    render :show
  end

  def show
    @location = Location.find(params[:id])
  end

  def update
    @location = Location.find(params[:id])
    @location.update(city: params[:city] || @location.city, 
                     state: params[:state] || @location.state, 
                     street_address: params[:street_address] || @location.street_address, 
                     zipcode: params[:zipcode] || @location.zipcode, 
                     country: params[:country] || @location.country
                    )

    render :show
  end

  def destroy
    @location = Location.find(params[:id])

    @location.destroy

    # render :index
    render json: { message: "Employee Destroyed" }
    # redirect_to "/locations"
    # render nothing: true
  end
end
