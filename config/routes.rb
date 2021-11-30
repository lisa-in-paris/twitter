Rails.application.routes.draw do
  get 'tweets/index'
  get 'tweets/new'
  get 'tweets/create'
  get 'tweets/show'
  get 'tweets/edit'
  get 'tweets/destroy'
  get 'sessions/new'
  get 'users/index'
  get 'users/new'
  get 'users/create'
  resources :users
  # resources :sessions, only[:new,:create,:destroy] 
  root 'users#index'
end
