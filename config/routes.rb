Rails.application.routes.draw do
  resources :inventories
  resources :bike_parts
  resources :parts
  resources :bicycles
  resources :users
  resources :garages

  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/authorized', to: 'users#show'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'




end
