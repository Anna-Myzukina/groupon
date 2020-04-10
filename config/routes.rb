Rails.application.routes.draw do

  root 'static_pages#home'

  get 'static_pages/home'

  get 'static_pages/profile'

  get 'signup'  => 'users#new'

  resources :users
end
