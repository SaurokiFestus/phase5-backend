Rails.application.routes.draw do
  resources :comments
  resources :users, only:[:index, :create, :show, :destroy]
  resources :questions, only:[:index, :create, :show, :update, :destroy]
  resources :votes, only:[:index, :create, :show, :update, :destroy]
  resources :answers, only:[:index, :create, :show, :update, :destroy]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
