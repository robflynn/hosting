Rails.application.routes.draw do
  resources :websites
  get 'pages/index'

  root to: 'pages#index'
end
