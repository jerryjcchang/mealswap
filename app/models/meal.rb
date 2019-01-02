class Meal < ApplicationRecord
  has_many :meal_bookings
  has_many :users, through: :meal_bookings
  has_many :meal_restrictions
  has_many :dietary_restrictions, through: :meal_restrictions
  belongs_to :user, as: :cook
end
