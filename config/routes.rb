Rails.application.routes.draw do
  # resources :schedule_days, only: [:index, :show, :create, :update, :destroy]
  resources :schedule_recurrences, only: [:index, :show, :create, :update, :destroy]
  resources :food_trucks, only: [:index, :show, :create, :update]
  resources :users, only: [:index, :show, :create, :update]
  # resources :food_truck_cuisines, only: [:index, :create, :destroy]
  post "/login", to: "auth#create"
  post "/validate", to: "auth#validate"
  post "/sign_up", to:"users#create"
  get "/form_data", to: "application#form_data"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
