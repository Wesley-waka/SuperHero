class HeroPower < ApplicationRecord
    validates :strength, inclusion: { in: %w(Average Strong Weak)}

    belongs_to :hero
    belongs_to :power
end