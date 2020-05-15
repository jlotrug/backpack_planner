module TransportTosHelper

  def display_transport_to(destination)
      !!destination.transport_to
  end

  def display_transport_to_dates(transport)
    #binding.pry
    if transport == nil
      "(add date and time)"
    else
      "#{transport.strftime('%B %d %Y')} at #{transport.strftime('%l:%M%p')}"
    end
  end

  def transport_to_buttons(destination)
    if destination.transport_to
      button_to "Edit Transportation To", edit_transport_to_path, method: "get", params:{transport_to_id: @destination.transport_to.id }
    else
      button_to "Add Transportation To", new_transport_to_path, method: "get", params:{destination_id: @destination.id}
    end
  end

end
