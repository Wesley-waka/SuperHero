class Power < ApplicationRecord
    has_many :hero_powers
    has_many :heroes 

    validates :description, length: { minimum: 20}
end