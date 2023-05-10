Rails.application.routes.draw do
  devise_for :users
  resources :recipes
  resources :favourites, only: [:create, :destroy, :index]
  


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "site#index"
end
