module TripsHelper

  def display_dates(trip)
    if trip.start == nil && trip.end == nil
      "(add dates)"
    end
  end


def trip_destinations(trip)
  trip.destinations ? trips.destinations : []
end
end
