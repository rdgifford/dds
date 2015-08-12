Rails.application.routes.draw do
  resources :dispatchers
  root 'rides#new'
  get  'users/new'
  get  'signup' => 'users#new'
  get  'dispatchers' => 'rides#index'
  resources :users
  resources :rides
  resources :navigators
end
