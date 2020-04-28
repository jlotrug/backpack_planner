class HotelsController < ApplicationController

  def new
    @destination = Destination.find(params[:destination_id])
    @hotel = @destination.hotels.build
  end

  def create
    @hotel = Hotel.new(hotel_params)
    #binding.pry
    @hotel.save
    redirect_to destination_path(@hotel.destination)
  end

  def show
    @hotel = Hotel.find(params[:id])
  end

  def destroy

  end

  private

  def hotel_params
    params.require(:hotel).permit(:name, :paid, :price, :location, :checkin, :checkout, :destination_id )
  end

end
