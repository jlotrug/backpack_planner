class TripsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def new

  end

  def create
    #binding.pry
    @trip = Trip.new(trip_params)

    if @trip.save
    #  binding.pry
      render json: @trip
    else
      render 'users/show'
    end
  end

  def edit

  end

  def update
    @trip = Trip.find(params[:id])
    @trip.update(trip_params)
    #binding.pry
    redirect_to trip_path(@trip)
  end

  def index

  end

  def show
    @trip = Trip.find(params[:id])
  end

  private

  def trip_params
    params.require(:trip).permit(:name, :user_id, :start, :end)
  end

end
