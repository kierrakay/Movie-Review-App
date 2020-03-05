Rails.application.routes.draw do
  
devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' } 

resources :movies do
    collection do
        get 'search'
    end
    resources :reviews, except: [:index]

end

resources :users, only: [:show]


default_url_options :host => "example.com"
#this is for when a user forgets password

root 'movies#index'
end

