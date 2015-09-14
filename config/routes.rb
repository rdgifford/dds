Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_scope    :user do get '/users/sign_out' => 'devise/sessions#destroy' end
  resources       :shifts
  devise_for      :users
  resources       :rides
  # resources       :sessions, only: [:new, :create, :destroy]
  root            'static_pages#home'
  post            'work' => 'shifts#create'
  get             'rides' => 'rides#index'
  get             'about' => 'static_pages#about'
  get             'policies' => 'static_pages#policies'
  get             'faq' => 'static_pages#faq'
end
