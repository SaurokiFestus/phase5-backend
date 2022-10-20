Rails.application.routes.draw do
  resources :comments, only:[:index, :create, :show, :update, :destroy]
  resources :users, only:[:index, :create, :show, :destroy]
  resources :questions, only:[:index, :create, :show, :update, :destroy]
  resources :votes, only:[:index, :create, :show, :update, :destroy]
  patch "/votes/:id/up_votes", to: "votes#decrement_votes"
  patch "/votes/:id/down_votes", to: "votes#increment_votes"

  resources :answers, only:[:index, :create, :show, :update, :destroy]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
