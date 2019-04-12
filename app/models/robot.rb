class Robot < ApplicationRecord
    belongs_to :abilities

    validates :name, uniqueness: true
end
