Rails.application.routes.draw do
  resources :items
  get 'items/index'
  get 'items/new'
  get 'items/edit'
  get 'items/show'
  resources :locations
  get 'locations/edit'
  get 'locations/index'
  get 'locations/new'
  get 'locations/show'
  root 'home#index'

    resources :users
    resources :sessions, only: [:new, :create, :destroy]
    get 'signup', to: 'users#new', as: 'signup'
    get 'login', to: 'sessions#new', as: 'login'
    get 'logout', to: 'sessions#destroy', as: 'logout'
end
