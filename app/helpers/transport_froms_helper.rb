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
end
