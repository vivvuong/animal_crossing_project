class Villager < ApplicationRecord
  belongs_to :animal
  belongs_to :gender
  belongs_to :personality
  belongs_to :hobby
end
