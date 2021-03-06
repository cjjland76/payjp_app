Rails.application.routes.draw do

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :users
  root 'items#index'

  resources :cards, only: [:new, :create]
  resources :users, only: [:show, :update]
  resources :items, only: :order do
    post 'order', on: :member
  end

end
