class CreateFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :flights do |t|
      t.integer :code
      t.references :departs_loc
      t.references :arrives_loc
      t.string :departs_date
      t.string :arrives_date
      t.string :duration

      t.timestamps
    end
  end
end
