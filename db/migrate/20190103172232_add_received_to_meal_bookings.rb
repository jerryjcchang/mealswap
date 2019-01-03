class AddReceivedToMealBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :meal_bookings, :received, :boolean, default: false
  end
end
