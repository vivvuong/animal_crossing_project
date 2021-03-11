class HobbiesController < ApplicationController
  def index
    @hobbies = Hobby.all
  end

  def show
    @hobbies = Hobby.find(params[:id])
  end
end
