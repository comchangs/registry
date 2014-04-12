Rails.application.routes.draw do
  root to: 'home#show'

  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]
  namespace :registry do
    root to: 'products#index'
    resources :products
  end

  get 'sign_in', to: 'sessions#new', as: 'sign_in'
end
