class UsersController < ApplicationController
    skip_before_action :authorize, only: :create
    
    #render a signup form
    def new
        @user = User.new
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

    def show
        if current_user
            render json: current_user, status: :ok
        else
            render json: "No current session stored", status: :unauthorized
        end
    end

    def self.create_user_for_google(data)                  
        where(uid: data["email"]).first_or_initialize.tap do |user|
            user.provider="google_oauth2"
            user.uid=data["email"]
            user.email=data["email"]
            user.password=Devise.friendly_token[0,20]
            user.password_confirmation=user.password
            user.save!
        end
    end 

    set_headers(tokens)
    render json: { status: 'Signed in successfully with google'}

    private 
                                               
    def set_headers(tokens)
        headers['access-token'] = (tokens['access-token']).to_s
        headers['client'] =  (tokens['client']).to_s
        headers['expiry'] =  (tokens['expiry']).to_s
        headers['uid'] =@user.uid             
        headers['token-type'] = (tokens['token-type']).to_s                  
        end                                          
    end

    def user_params
        params.permit(:username, :email, :password, :password_confirmation)
    end 
end