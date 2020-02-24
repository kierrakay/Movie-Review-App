Rails.application.routes.draw do
  # get 'reviews/index'
  # get 'reviews/new'
  # get 'reviews/create'
  # get 'reviews/show'
  # get 'reviews/edit'
  # get 'reviews/update'
  # get 'reviews/destroy'
  # get 'movies/index'
  # get 'movies/new'
  # get 'movies/create'
  # get 'movies/show'
  # get 'movies/edit'
  # get 'movies/update'
  # get 'movies/destroy'
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'application#welcome'

resources :movies
resources :reviews
end
