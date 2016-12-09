class AddProductIdToOffers < ActiveRecord::Migration[5.0]
  def change
    add_reference :offers, :product, foreign_key: true
  end
end
