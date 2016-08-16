class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.datetime :date
      t.integer :number_of_people

      t.timestamps
    end
  end
end
