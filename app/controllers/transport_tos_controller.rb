class TransportTosController < ApplicationController

  def new
    @destination = Destination.find(params[:destination_id])
    if @destination.transport_to
      @transport_to =  @destination.transport_to
    else
      #binding.pry
     @transport_to = Destination.find(params[:destination_id]).build_transport_to
   end
  end

  def create
    #raise params.inspect
    @transport_to = TransportTo.create(transport_to_params)
    #binding.pry
    redirect_to destination_path(@transport_to.destination)
  end

  def update
    raise params.inspect
    #binding.pry
    @transport_to = TransportTo.create(transport_to_params)
    #binding.pry
    redirect_to destination_path(@transport_to.destination)
  end




private

  def transport_to_params
    params.require(:transport_to).permit(:transport_type, :price, :paid, :third_party, :time_leaving, :time_arriving, :leaving_from_location, :arriving_at_location, :destination_id)
  end
end
