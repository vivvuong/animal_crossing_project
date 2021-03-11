class Villager < ApplicationRecord
  belongs_to :animal
  belongs_to :gender
  belongs_to :personality
  belongs_to :hobby

  validates :name, :icon_image, :photo_image, :house_image, :animal, :gender, :personality, :hobby, :birthday, :catchphrase, :favorite_song, :favorite_saying, presence: true
  validates :name, uniqueness: true
end
