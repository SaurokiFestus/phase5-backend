class UsersController < ApplicationController
    
    #render a signup form
    def new
        @user - User.new
    end 

    #processess the signup form
    def create 
    end
end
