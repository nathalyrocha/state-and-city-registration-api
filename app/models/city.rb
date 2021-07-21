class City < ApplicationRecord
  belongs_to :state

  validates :name, :state_id, presence: true
  validates :name, uniqueness: { scope: :state_id }
end
