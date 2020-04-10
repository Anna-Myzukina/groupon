Rails.application.routes.draw do
  get 'static_pages/home'

  get 'static_pages/profile'

  root 'application#hello'
end
