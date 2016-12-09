class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.integer :Rut
      t.string :Nombre
      t.string :Apellido

      t.timestamps
    end
  end
end
