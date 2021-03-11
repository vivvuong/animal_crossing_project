class AnimalsController < ApplicationController
  def index
    @animals = Animal.all
  end

  def show
    @villagers = Villager.where(["animal_id = ?", params[:id]])
    @animals = Animal.find(params[:id])
  end
end

