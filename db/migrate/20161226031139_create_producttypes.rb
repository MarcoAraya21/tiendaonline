class CreateProducttypes < ActiveRecord::Migration[5.0]
  def change
    create_table :producttypes do |t|
      t.string :Nombre

      t.timestamps
    end
  end
end
