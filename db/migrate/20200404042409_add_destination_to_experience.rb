class AddDestinationToExperience < ActiveRecord::Migration[6.0]
  def change
    add_column :experiences, :destination_id, :integer
    add_column :hotels, :destination_id, :integer
  end
end
