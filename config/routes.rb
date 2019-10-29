Rails.application.routes.draw do
  resources :food_trucks, only: [:index]
  resources :users, only: [:index, :create]
  post "/login", to: "auth#create"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
