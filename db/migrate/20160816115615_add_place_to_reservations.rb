class AddPlaceToReservations < ActiveRecord::Migration[5.0]
  def change
    add_reference :reservations, :place, foreign_key: true
  end
end
