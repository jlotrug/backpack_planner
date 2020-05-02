class CreateTransportTos < ActiveRecord::Migration[6.0]
  def change
    create_table :transport_tos do |t|
      t.integer :destination_id
      t.string :type
      t.integer :price
      t.boolean :paid
      t.datetime :time_leaving
      t.datetime :time_arriving
      t.string :third_party
      t.string :leaving_from_location
      t.string :arriving_at_location
      t.timestamps
    end
  end
end
