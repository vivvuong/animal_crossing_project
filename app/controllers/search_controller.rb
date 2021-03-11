class SearchController < ApplicationController
    def index

    end

    def results
        @villagers = Villager.where('lower(name) = ?', params[:query])
    end
end
