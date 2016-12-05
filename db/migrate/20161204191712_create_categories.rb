class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.integer :Id_Categoria
      t.string :Nombre
      t.integer :Padre

      t.timestamps
    end
  end
end
