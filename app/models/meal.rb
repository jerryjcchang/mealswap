class Meal < ApplicationRecord
  has_many :meal_bookings
  has_many :bookers, through: :meal_bookings
  belongs_to :chef, class_name: 'User', foreign_key: 'chef_id'
  has_many :meal_restrictions
  has_many :dietary_restrictions, through: :meal_restrictions

  has_one_attached :image

  def chef_id
    chef.id
  end

  def chef_username
    chef.username
  end

  def avail?
    portion >= 1
  end

end
