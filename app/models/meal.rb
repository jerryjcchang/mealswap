class Meal < ApplicationRecord
  has_many :meal_bookings
  has_many :bookers, through: :meal_bookings
  belongs_to :chef, class_name: 'User', foreign_key: 'chef_id'
  has_many :meal_restrictions
  has_many :dietary_restrictions, through: :meal_restrictions

  has_one_attached :image

  validates :name, presence: true
  validates :calories, presence: true
  validates :ingredients, presence: true
  validates :description, presence: true
  validates :prep_time, presence: true
  validates :chef_id, presence: true
  validates :portion, presence: true

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
