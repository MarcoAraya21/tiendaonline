class AddProductoIdToReservations < ActiveRecord::Migration[5.0]
  def change
    add_reference :reservations, :producto, foreign_key: true
  end
end
