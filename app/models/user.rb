class User < ApplicationRecord
  belongs_to :company
  has_many :meal_bookings, foreign_key: 'booker_id'
  has_many :meals, through: :meal_bookings
  has_many :meals, foreign_key: 'chef_id'
end
