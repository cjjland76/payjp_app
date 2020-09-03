Rails.application.routes.draw do
  get 'cards/new'
  get 'users/show'
  get 'items/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :users
  root 'items#index'

  resources :users
  resources :cards
end
