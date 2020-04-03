class AddDatesToTrips < ActiveRecord::Migration[6.0]
  def change
    add_column :trips, :start, :datetime
    add_column :trips, :end, :datetime
  end
end
