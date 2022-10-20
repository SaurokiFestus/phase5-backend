class UsersController < ApplicationController
    skip_before_action :authorize, only: :create
    
    #render a signup form
    def new
        @user - User.new
    end 

    #processess the signup form
    def create
        user = User.create!(user_params)
        session[:user_id] = user.id 
        render json: user, status: :created
    end
end
