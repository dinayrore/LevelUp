Rails.application.routes.draw do
  root to: 'pages#index'

  get  '/community-dash',     to: 'posts#index'
  get 'conmmunity-dash/:name', to: 'posts#show'

  get 'password_resets/new'
  get 'password_resets/edit'

  get    '/signup',  to: 'users#new'
  post   '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets, only: [:new, :create, :edit, :update]
  resources :posts, shallow: true do
  	resources :comments, only: [:create, :destroy]
  end
end
