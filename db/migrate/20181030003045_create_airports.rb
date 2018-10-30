class CreateAirports < ActiveRecord::Migration[5.2]
  def change
    create_table :airports do |t|
      t.string :code, unique: true
      t.references :departures
      t.references :arrivals

      t.timestamps
    end
  end
end
