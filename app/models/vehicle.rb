class Vehicle < ApplicationRecord
  validates :title, presence: true 
  validates :brand, presence: true 
  validates :description, presence: true 
  validates :year, numericality: { less_than_or_equal_to: Date.today.year+1 }
  validates :sold, inclusion: { in: [true, false] }
end
