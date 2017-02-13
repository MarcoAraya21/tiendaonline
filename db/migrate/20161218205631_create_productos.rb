class CreateProductos < ActiveRecord::Migration[5.0]
  def change
    create_table :productos do |t|
      t.references :category, foreign_key: true
      t.references :product_type, foreign_key: true
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
