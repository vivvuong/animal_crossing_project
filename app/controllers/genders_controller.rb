class GendersController < ApplicationController
  def index
    @genders = Gender.all
  end

  def show
    @genders = Gender.find(params[:id])
  end
end
