module DestinationHelper

def destination_hotels(destination)
  destination.hotels ? destination.hotels : []
end 


end
