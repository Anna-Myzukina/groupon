Rails.application.routes.draw do

  root 'static_pages#home'
  get 'static_pages/home'
  get 'static_pages/profile'
  get 'sessions/new'

  resources :groups
  resources :activities
  resources :users

  resources :sessions,only: [:destroy]
  get 'signup', to: 'users#new', as: :signup
  get 'login', to: 'sessions#new', as: :login
  get 'logout', to: 'sessions#destroy', as: :logout
  post 'login', to: 'sessions#create' 
end
