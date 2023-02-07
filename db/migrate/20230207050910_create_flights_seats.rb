class CreateFlightsSeats < ActiveRecord::Migration[5.2]
  def change
    create_table :flights_seats do |t|
      t.integer :seat_id
      t.integer :flight_id

      t.timestamps
    end
  end
end
