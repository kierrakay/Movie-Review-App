Rails.application.routes.draw do
  
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'movies#index'

resources :movies
resources :reviews
# resources :movies do
# resources :reviews
# end


end
