class HomeController < ApplicationController
  def index
    @villagers = Villager.includes(:animal)
    .limit(10)
    @animals = Animal.limit(10)
  end
end
