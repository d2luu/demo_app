Rails.application.routes.draw do
  
  get 'sessions/new'

  root 'static_pages#home'

  get 	 '/home', 	 to: 'static_pages#home'
  get 	 '/signup',  to: 'users#new'
  post 	 '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :entries
  resources :users do
    member do
      get :following, :followers
    end
  end
  resources :entries,          only: [:create, :destroy]
  resources :comments,		   only: [:create, :destroy]
  resources :relationships,       only: [:create, :destroy]
  end
