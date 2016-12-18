class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :Nombre
      t.text :Descripcion
      t.string :Modelo
      t.integer :Precio
      t.integer :Stock
      t.string :Imagen

      t.timestamps
    end
    
  end
end
