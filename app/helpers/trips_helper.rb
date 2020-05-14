module TripsHelper

  def display_trip_dates(start, ending)
    #binding.pry
    if start == nil && ending == nil
      "(add dates)"
    else
      "#{start.strftime('%B %d %Y')} - #{ending.strftime('%B %d %Y')}"
    end
  end


def trip_destinations(trip)
  trip.destinations ? trip.destinations : []
end
end
