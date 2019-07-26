Rails.application.routes.draw do
  root :to => 'application#index'

  namespace :api do
    namespace :v1 do
      resources :species
      resources :plants
      resources :users
      post '/login', to: 'auth#login'
      get '/profile', to: 'users#profile'
    en

end
