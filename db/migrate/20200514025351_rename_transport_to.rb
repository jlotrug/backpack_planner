class RenameTransportTo < ActiveRecord::Migration[6.0]
  def change
    rename_column :transport_tos, :type, :transport_type
    rename_column :transport_froms, :type, :transport_type
  end
end
