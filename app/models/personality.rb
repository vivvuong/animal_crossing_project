class Personality < ApplicationRecord
    has_many :villagers
    validates :personality, presence: true
end
