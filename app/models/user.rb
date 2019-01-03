class User < ApplicationRecord
  has_secure_password
  belongs_to :company
  has_many :meal_bookings, foreign_key: 'booker_id'
  has_many :meals, through: :meal_bookings
  has_many :meals, foreign_key: 'chef_id'
  validates :username, uniqueness: true
  validates_format_of :first_name, :with => /\A[a-zA-Z]+(?: [a-zA-Z]+)?\z/

  def full_name
    self.first_name + " " + self.last_name
  end

end
