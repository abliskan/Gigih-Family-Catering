Rails.application.routes.draw do
  resources :order_details
  resources :orders
  resources :categories
  resources :customers
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
