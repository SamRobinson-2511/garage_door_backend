Rails.application.routes.draw do
  resources :inventories, only: [:index, :show]
  resources :bike_parts 
  resources :parts, only: [:index, :show, :create, :update, :destroy] 
  resources :bicycles, only: [:index, :show, :create, :update, :destroy] 
  resources :users
  resources :garages



  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
