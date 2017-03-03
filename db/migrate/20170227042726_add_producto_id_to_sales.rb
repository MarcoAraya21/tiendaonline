class AddProductoIdToSales < ActiveRecord::Migration[5.0]
  def change
    add_reference :sales, :producto, foreign_key: true
  end
end
