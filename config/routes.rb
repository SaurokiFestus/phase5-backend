Rails.application.routes.draw do

  mount_devise_token_auth_for 'User', at: 'auth', skip: [:omniauth_callbacks]

  post 'auth/request', to:'authorization#get_authorization'
  
  get '/me', to: "users#show"
  #custom signup routes
  get '/signup', to: "users#create"
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create' 
  #custom login routes
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  #auto generated resource routes
  resources :comments, only:[:index, :create, :show, :update, :destroy]
  resources :users, only:[:index, :create, :show, :destroy]
  resources :questions, only:[:index, :create, :show, :update, :destroy]

 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
