class Animal < ApplicationRecord
    has_many :villagers
    validates :animal, presence: true, uniqueness: true
end
