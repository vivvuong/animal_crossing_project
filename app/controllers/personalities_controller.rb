class PersonalitiesController < ApplicationController
  def index
    @personalities = Personality.all
  end

  def show
    @personalities = Personality.find(params[:id])
  end
end
