class Hero < ApplicationRecord
    has_many :hero_powers, dependent: :destroy
    has_many :powers, through: :hero_powers
end