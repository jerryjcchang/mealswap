class MealBooking < ApplicationRecord
  belongs_to :user, as: 
  belongs_to :meals
end
