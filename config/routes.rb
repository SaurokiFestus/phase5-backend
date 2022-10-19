Rails.application.routes.draw do
  resources :questions, only:[:index, :show, :create, :update, :destroy]
  resources :votes, only:[:index, :show, :create, :update, :destroy]
  resources :answers, only:[:index, :show, :create, :update, :destroy]
  resources :users, only:[:index, :show, :create, :destroy]
  resources :comments, only:[:index, :show, :create, :update, :destroy]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
