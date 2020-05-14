class DestinationsController < ApplicationController

  def new
    @trip = Trip.find(params[:trip_id])
    @destination = @trip.destinations.build
  end

  def create
    @destination = Destination.new(destination_params)
    @destination.trip_id = params[:trip_id]
    @destination.save
    #binding.pry
    redirect_to trip_destination_path(params[:trip_id], @destination)
  end

  def show
    @destination = Destination.find(params[:id])
  end

  private

  def destination_params
    params.require(:destination).permit(:name, :trip_id, :transport_to, :transport_from)
  end

end
