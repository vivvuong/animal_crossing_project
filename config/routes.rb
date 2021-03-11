Rails.application.routes.draw do
  # get 'home/index'
  # get 'animals/index'
  # get 'animals/show'
  # get 'hobbies/index'
  # get 'hobbies/show'
  # get 'personalities/index'
  # get 'personalities/show'
  # get 'genders/index'
  # get 'genders/show'
  # get 'villagers/index'
  # get 'villagers/show'


  root to: "home#index"
  resources :villagers, only: %i[index show]
  resources :animals, only: %i[index show]
  resources :hobbies, only: %i[index show]
  resources :personalities, only: %i[index show]
  resources :genders, only: %i[index show]

end
