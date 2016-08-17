class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.date 	:date
      t.integer :number_of_people

      t.timestamps
    end
  end
end
