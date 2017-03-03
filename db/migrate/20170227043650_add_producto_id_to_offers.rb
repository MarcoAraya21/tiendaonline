class AddProductoIdToOffers < ActiveRecord::Migration[5.0]
  def change
    add_reference :offers, :producto, foreign_key: true
  end
end
