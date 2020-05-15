module TransportFromsHelper

  def display_transport_from(destination)
      !!destination.transport_from
  end

  def display_transport_from_dates(transport)
    #binding.pry
    if transport == nil
      "(add date and time)"
    else
      "#{transport.strftime('%B %d %Y')} at #{transport.strftime('%l:%M%p')}"
    end
  end

  def transport_from_buttons(destination)
    if destination.transport_from
      button_to "Edit Transportation From", edit_transport_from_path, method: "get", params:{transport_from_id: @destination.transport_from.id }
    else
      button_to "Add Transportation From", new_transport_from_path,method: "get", params:{destination_id: @destination.id}
    end
  end
end
