Rails.application.routes.draw do
  resources :companies, only: [:index]
  resources :users, only: [:index, :new, :create, :edit, :update, :show]
  resources :meals
  resources :meal_bookings, only: [:new, :create, :destroy]

  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  get "/logout", to: "sessions#destroy"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #Added note: you may want to add a catchall route that pushes back to your
  #root page.
end
