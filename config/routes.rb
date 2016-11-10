Rails.application.routes.draw do
  devise_for :users
  resources :appointments
  resources :events
  resources :slots
  resources :books
  resources :categories
  resources :users

  root 'users#home'

  get '/batch_new', to: 'appointments#batch_new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
