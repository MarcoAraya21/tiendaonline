class DeviseCreateUsers < ActiveRecord::Migration[5.0]
  def change
    change_table :users do |t|
      ## Database authenticatable
      t.string :email,              null: false, default: ""


    end

    add_index :users, :email,                unique: true
    # add_index :users, :confirmation_token,   unique: true
    # add_index :users, :unlock_token,         unique: true
  end
end