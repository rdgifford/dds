Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources       :shifts
  devise_for      :users
  resources       :rides
  root            'static_pages#home'
  get             'work' => 'sessions#create'
  get             'rides' => 'rides#index'
  get             'about' => 'static_pages#about'
  get             'policies' => 'static_pages#policies'
  get             'faq' => 'static_pages#faq'
end
