class MealRestriction < ApplicationRecord
  belongs_to :meals
  belongs_to :dietary_restrictions
end
