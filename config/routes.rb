Rails.application.routes.draw do
  devise_for      :users
  resources       :rides
  root            'rides#index'
  get             'rides' => 'rides#index'
end
