Rails.application.routes.draw do
  root 'pages#home'
  resources :categories do
    resources :products
  end

  get 'search', to: 'pages#search'
end
