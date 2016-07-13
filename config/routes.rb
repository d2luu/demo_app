Rails.application.routes.draw do
  resources :entries
  resources :users
  root 'users#index'
end
