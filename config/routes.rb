Rails.application.routes.draw do

  post 'auth/request', to:'authorization#get_authorization'
  resources :answers
  patch "/answers/:id/decrease", to: "answers#change_votes_decrement"
  patch "/answers/:id/increase", to: "answers#change_votes_increment"
  resources :tests
  
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
  resources :comments
 
  resources :users, only:[:index, :create, :show, :destroy]
  resources :questions, only:[:index, :create, :show, :update, :destroy]
  
  patch '/views/:id', to: 'questions#view'
 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
