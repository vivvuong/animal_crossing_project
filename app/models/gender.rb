class Gender < ApplicationRecord
    has_many :villagers
    validates :gender, presence: true, uniqueness: true
end
