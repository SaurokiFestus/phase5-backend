class UsersController < ApplicationController
    # skip_before_action :authorize, only: :create
    
    #render a signup form
    # def new
    #     @user = User.new
    # end 
    def show 
        if current_user
            render json: @current_user, status: :ok
        else
            render json: "No current session stored", status: :unauthorized
        end
    end

    #processess the signup form
    def create
        user = User.create(user_params)
        if user.valid?
            session[:user_id] = user.id # this is the piece that logs a user in and keeps track of users info in subsequent requests.
            render json: user, status: :ok
        else
            render json: user.errors.full_messages, status: :unprocessable_entity
        end
    end
    
    private 
    
    def user_params
      params.permit(:username, :email, :password, :password_confirmation)
    end
end
