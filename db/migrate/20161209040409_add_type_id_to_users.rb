class AddTypeIdToUsers < ActiveRecord::Migration[5.0]
  def change
    add_reference :users, :type, foreign_key: true 
  end
end
