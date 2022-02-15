Rails.application.routes.draw do
  root 'products#index'
  resources :categories do
    resources :products
  end

  get 'search', to: 'pages#search'
  post 'qwe', to: 'products#qwe'
end
