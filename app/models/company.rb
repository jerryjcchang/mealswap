class Company < ApplicationRecord
  has_many :users

  def self.sorted
    self.order(:name)
  end

end
