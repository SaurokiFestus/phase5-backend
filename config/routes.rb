Rails.application.routes.draw do
  resources :all_answers, only:[:index, :create, :show, :update, :destroy]
  resources :comments, only:[:index, :create, :show, :update, :destroy]
  resources :users, only:[:index, :create, :show, :destroy]
  resources :questions, only:[:index, :create, :show, :update, :destroy]

 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
