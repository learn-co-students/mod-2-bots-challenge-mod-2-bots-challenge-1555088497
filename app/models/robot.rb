class Robot < ApplicationRecord
  belongs_to :ability

  validates :name, presence: true, uniqueness: true
end
