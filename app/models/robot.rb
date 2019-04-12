class Robot < ApplicationRecord
  belongs_to :ability
  validates :name, uniqueness: true
end
