class User < ApplicationRecord
  belongs_to :company
  has_many :meal_bookings
  has_many :meals, through: :meal_bookings
  belongs_to :booking, polymorphic: true
end
