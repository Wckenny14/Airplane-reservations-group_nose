class CreateAirplanes < ActiveRecord::Migration[5.2]
  def change
    create_table :airplanes do |t|
      t.text :plane_name
      t.text :rows
      t.text :columns

      t.timestamps
    end
  end
end
