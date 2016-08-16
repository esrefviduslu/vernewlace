class AddCustomerToReservations < ActiveRecord::Migration[5.0]
  def change
    add_reference :reservations, :customer, foreign_key: true
  end
end
