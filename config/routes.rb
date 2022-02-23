Rails.application.routes.draw do
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'products#index'
  resources :categories
  resources :products do
    resources :order_items, only: %i[create update destroy]
  end
  resources :users
  resources :orders

  get 'search', to: 'pages#search'
  get 'search_titles', to: 'pages#search_titles'
end
