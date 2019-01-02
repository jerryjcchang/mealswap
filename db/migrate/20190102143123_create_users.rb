class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :first_name
      t.string :last_name
      t.string :company
      t.string :experience
      t.integer :chef_id
      t.integer :booking_id

      t.timestamps
    end
  end
end
