Rails.application.routes.draw do
  devise_for :users
  root to: 'home#index'

  resources :home, only: [:index]
  resources :posts, only: [:new, :create, :index, :show]
end
