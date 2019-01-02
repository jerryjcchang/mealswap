class DietaryRestriction < ApplicationRecord
  has_many :meal_restrictions
  has_many :meals, through: :meal_restrictions
end
