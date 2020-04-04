class CreateHotels < ActiveRecord::Migration[6.0]
  def change
    create_table :hotels do |t|
      t.string :name
      t.integer :price
      t.boolean :paid
      t.datetime :checkin
      t.datetime :checkout

      t.timestamps
    end
  end
end
