class AddProductIdToReservations < ActiveRecord::Migration[5.0]
  def change
    add_reference :reservations, :product, foreign_key: true
  end
end
