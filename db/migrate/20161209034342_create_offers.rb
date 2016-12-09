class CreateOffers < ActiveRecord::Migration[5.0]
  def change
    create_table :offers do |t|
      t.integer :Nuevo_Precio
      t.date :Fecha_ini
      t.date :fecha_fin

      t.timestamps
    end
  end
end
