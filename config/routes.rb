Rails.application.routes.draw do
  resources :actors
  resources :locations
  resources :movies
  resources :categories
  resources :comments
  resources :movie_actors
  resources :movie_locations
  resources :examples
  root 'application#home'
  get '/categories/:id/movies', to: "movies#by_category"
end
