Rails.application.routes.draw do
  
devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

resources :movies do
    collection do
        get 'search'
    end
    resources :reviews
# resources :reviews, except: [:show, :index]
end

resources :reviews

root 'movies#index'

end
