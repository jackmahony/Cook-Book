Rails.application.routes.draw do
  devise_for :users,
  controllers: {
      omniauth_callbacks: 'users/omniauth_callbacks'
  }
  resources :recipes
  resources :favourites, only: [:create, :destroy, :index]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "recipes#index"

  get '/my_recipes', to: 'recipes#my_recipes'

end
