class Hobby < ApplicationRecord
    has_many :villagers
    validates :hobby, presence: true
end
