class User < ApplicationRecord
  has_secure_password
  belongs_to :company
  has_many :meal_bookings, foreign_key: 'booker_id'
  has_many :meals, through: :meal_bookings
  has_many :meals, foreign_key: 'chef_id'
  validates :username, uniqueness: true
  validates_format_of :username, with: (/\A[A-Za-z0-9]+$\z/)
  validates_format_of :first_name, with: /\A[a-zA-Z]+(?: [a-zA-Z]+)?\z/
  validates_with EmailAddress::ActiveRecordValidator, field: :email

  def to_param
    [username.parameterize].join("-")
  end

  def full_name
    first_name + " " + last_name
  end

  def company_name
    company.name
  end

  def booked_meals
    meal_bookings.all
  end

  def can_book?
    booked_meals.length >= 0 && booked_meals.length <= 3
  end

end
