class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.integer :Codigo
      t.date :Fecha

      t.timestamps
    end
  end
end
