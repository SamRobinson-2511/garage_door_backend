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

  post '/login', to: 'sessions#create'
end
