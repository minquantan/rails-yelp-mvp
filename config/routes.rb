Rails.application.routes.draw do
  get 'reviews/show'
  get 'restaurants/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # A visitor can see the list of all restaurants.
  # GET "restaurants"
  # A visitor can add a new restaurant, and be redirected to the show view of that new restaurant.
  # GET "restaurants/new"
  # POST "restaurants"

  # resources :restaurants, only: %i[index show new create]

  resources :restaurants, only: %i[index show new create] do
    resources :reviews, only: %i[create]
  end
end
