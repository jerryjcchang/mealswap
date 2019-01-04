class MealBooking < ApplicationRecord
  belongs_to :meal
  belongs_to :booker, class_name: 'User', foreign_key: 'booker_id'
  validates_uniqueness_of :meal_id, :scope => :booker_id, :message=>"You can't book a meal more than once.", on: 'create'

  def meal_name
    meal.name
  end

end
