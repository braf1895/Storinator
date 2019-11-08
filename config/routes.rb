Rails.application.routes.draw do
  resources :items
  resources :advisors
  resources :grades
  resources :courses
  resources :students
  get 'dummy01/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

#config/routes.rb
Rails.application.routes.draw do
  resources :items
  root to: 'items#index'
end
