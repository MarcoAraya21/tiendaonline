class AddProductIdToSales < ActiveRecord::Migration[5.0]
  def change
    add_reference :sales, :product, foreign_key: true
  end
end
