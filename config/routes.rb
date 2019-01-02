Rails.application.routes.draw do
  resources :companies, only: [:index]
  resources :users, only: [:show]
  resources :meals, only: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
