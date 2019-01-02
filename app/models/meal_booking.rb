class MealBooking < ApplicationRecord
  belongs_to :meal
  belongs_to :booker, class_name: 'User', foreign_key: 'booker_id'
end
