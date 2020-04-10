Rails.application.routes.draw do

  get 'sessions/new'

  root 'static_pages#home'

  get 'static_pages/home'

  get 'static_pages/profile'

  get 'signup'  => 'users#new'

  resources :users
end
