Rails.application.routes.draw do
  resources :bicycles
  resources :bike_parts
  resources :users
  resources :garages
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
