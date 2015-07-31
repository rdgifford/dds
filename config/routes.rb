Rails.application.routes.draw do
  root 'rides#new'
  get  'users/new'
  get  'signup' => 'users#new'
  resources :users
  resources :rides
end
