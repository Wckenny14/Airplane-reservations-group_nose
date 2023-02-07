class CreateSeats < ActiveRecord::Migration[5.2]
  def change
    create_table :seats do |t|
      t.text :seat_number
      t.integer :airplane_id

      t.timestamps
    end
  end
end
