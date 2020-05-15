class TransportFromsController < ApplicationController

  def new
    @transport_from = Destination.find(params[:destination_id]).build_transport_from
  end

  def create
    #binding.pry
    @transport_from = TransportFrom.create(transport_from_params)
    redirect_to destination_path(@transport_from.destination)
  end


  def transport_from_params
    params.require(:transport_from).permit(:transport_type, :price, :paid, :third_party, :time_leaving, :time_arriving, :leaving_from_location, :arriving_at_location, :destination_id)
  end
end
