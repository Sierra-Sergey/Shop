Rails.application.routes.draw do
  root 'products#index'
  resources :categories
  resources :products

  get 'search', to: 'pages#search'
  get 'search_titles', to: 'pages#search_titles'
end
