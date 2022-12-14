class SessionsController < ApplicationController
  def new
  end  
  
  def create
    user = User.find_by(username: params[:username])
    if user&.authenticate(params[:password])
      session[:user_id] = user.id
      render json: user, status: :ok
    else
      render json: {error:'Invalid email or password'}, status: :unauthorized    
    end
  end

  def destroy
    session.delete :user_id
    head :no_content
  end
end
