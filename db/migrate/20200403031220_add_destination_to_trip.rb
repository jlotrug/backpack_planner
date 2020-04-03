class AddDestinationToTrip < ActiveRecord::Migration[6.0]
  def change
    add_column :destinations, :trip_id, :integer
    add_column :destinations, :transport_to, :text
    add_column :destinations, :transport_from, :text
  end
end
