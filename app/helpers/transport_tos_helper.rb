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

end
