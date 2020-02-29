Rails.application.routes.draw do
  
devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' } 

resources :movies do
    collection do
        get 'search'
    end
    resources :reviews
# resources :reviews, except: [:show, :index]
end

# resources :reviews
# dont use just a reviews route

root 'movies#index'
# get 'users/:id/movies' => 'users#moviews', :as => :user_movies


# resource :users, only: [:show] do
#     resources :movies
#   end

resources :users, only: [:show]


end

