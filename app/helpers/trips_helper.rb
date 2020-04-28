module TripsHelper

  def display_dates(trip)
    if trip.start == nil && trip.end == nil
      "(add dates)"
    else
      "#{trip.start.strftime('%B %d %Y')} - #{trip.end.strftime('%B %d %Y')}"
    end
  end


def trip_destinations(trip)
  trip.destinations ? trip.destinations : []
end
end
