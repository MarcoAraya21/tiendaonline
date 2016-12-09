class CreateSales < ActiveRecord::Migration[5.0]
  def change
    create_table :sales do |t|
      t.date :Fecha
      t.integer :Cantidad
      t.integer :Total

      t.timestamps
    end
  end
end
