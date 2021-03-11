class HobbiesController < ApplicationController
  def index
    @hobbies = Hobby.all
  end

  def show
    @villagers = Villager.where(["hobby_id = ?", params[:id]])
    @hobbies = Hobby.find(params[:id])
  end
end
