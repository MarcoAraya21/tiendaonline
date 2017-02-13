class AddNewValuesToProductos < ActiveRecord::Migration[5.0]
  def change
    add_reference :productos, :producttype, foreign_key: true
  end
end
