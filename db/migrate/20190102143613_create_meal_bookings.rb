class CreateMealBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :meal_bookings do |t|
      t.integer :meal_id
      t.integer :booker_id

      t.timestamps
    end
  end
end
