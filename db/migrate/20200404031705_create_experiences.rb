class CreateExperiences < ActiveRecord::Migration[6.0]
  def change
    create_table :experiences do |t|
      t.string :name
      t.integer :price
      t.boolean :paid
      t.string :location
      t.datetime :time

      t.timestamps
    end
  end
end
