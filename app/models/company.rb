class Company < ApplicationRecord
  has_many :users

  def sorted
    order(:name)
  end

end
