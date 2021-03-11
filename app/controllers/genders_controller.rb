class GendersController < ApplicationController
  def index
    @genders = Gender.all
  end

  def show
    @villagers = Villager.where(["gender_id = ?", params[:id]])
    @genders = Gender.find(params[:id])
  end
end
