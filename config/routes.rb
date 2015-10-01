Rails.application.routes.draw do
  resources       :vehicles   do
    resources     :vehicles_shifts
    end
  resources       :shifts
  resources       :users_shifts
  resources       :rides
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_scope    :user do get '/users/sign_out' => 'devise/sessions#destroy' end
  devise_for      :users
  # resources       :sessions, only: [:new, :create, :destroy]
  root            'static_pages#home'
  post            'shifts' => 'shifts#create'
  get             'work' => 'shifts#index'
  get             'about' => 'static_pages#about'
  get             'policies' => 'static_pages#policies'
  get             'faq' => 'static_pages#faq'
end
