Rails.application.routes.draw do
  # resources :user do
  #   resorces :tweets, only[:new, create]
  # end

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
  resources :tweets

  
  root 'users#index'

  resources :users do
    resources :tweets, only: [:new,:create]
  end
end
