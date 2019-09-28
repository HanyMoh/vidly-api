Rails.application.routes.draw do
  resources :movies
  resources :genres
  root 'movies#index'
end
