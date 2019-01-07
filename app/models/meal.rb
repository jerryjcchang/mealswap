class Meal < ApplicationRecord
  #code consistancy: here you have relationship, space, dependancy code, space, validations.
  #in other files there's no spereration between validations and relationships.
  #You may even want to write a note to explain the divisions in the code

  #ie : Relationships
  has_many :meal_bookings
  has_many :bookers, through: :meal_bookings
  belongs_to :chef, class_name: 'User', foreign_key: 'chef_id'
  has_many :meal_restrictions
  has_many :dietary_restrictions, through: :meal_restrictions
 #ie: ActiveStorage:
  has_one_attached :image
#ie: Validations: 
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

#might want to leave a note or spell this all the way out available? for readability
  def avail?
    portion >= 1
  end



end
