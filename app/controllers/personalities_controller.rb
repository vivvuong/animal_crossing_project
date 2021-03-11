class PersonalitiesController < ApplicationController
  def index
    @personalities = Personality.all
  end

  def show
    @villagers = Villager.where(["personality_id = ?", params[:id]])
    @personalities = Personality.find(params[:id])
  end
end
