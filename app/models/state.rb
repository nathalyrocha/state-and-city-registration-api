class State < ApplicationRecord
  has_many :cities

  validates :name, :abbreviation, presence: true
  validates :name, :abbreviation, uniqueness: true
end
