Rails.application.routes.draw do
  resources :food_trucks, only: [:index, :show, :create, :update, :destroy]
  resources :users, only: [:index, :show, :create]
  post "/login", to: "auth#create"
  post "/validate", to: "auth#validate"
  post "/sign_up", to:"users#create"
  get "/form_data", to: "application#form_data"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
