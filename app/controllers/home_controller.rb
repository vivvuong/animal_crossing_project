class HomeController < ApplicationController
  def index
    @animals = Animal.all
    @hobbies = Hobby.all
    @personalities = Personality.all
    @genders = Gender.all
  end
end
