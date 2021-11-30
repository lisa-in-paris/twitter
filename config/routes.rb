Rails.application.routes.draw do
  get 'sessions/new'
  get 'users/index'
  get 'users/new'
  get 'users/create'
  resources :users
  # resources :sessions, only[:new,:create,:destroy] 
  root 'users#index'
end
