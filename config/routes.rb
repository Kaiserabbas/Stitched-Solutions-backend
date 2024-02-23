Rails.application.routes.draw do
  devise_for :users
  resources :fashion_designs, :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "users#show"
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  # get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
    namespace :v1 do
      resources :users, only: [:index, :show]
      resources :fashion_designs, only: [:index, :show, :create, :destroy]
      post '/login', to: 'auth#login'
    end
end
