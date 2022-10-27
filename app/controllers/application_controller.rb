class ApplicationController < ActionController::API
    wrap_parameters format: []
    include ActionController::Cookies
    
    # before_action :authorize

    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity

    rescue_from ActiveRecord::RecordNotFound, with: :render_record_not_found

    def current_user
        User.find_by(id: session[:user_id])
    end


    private

    def authorize
    @current_user = User.find_by(id: session[:user_id])

    render json: { errors: ["Sorry, You are Not authorized"] }, status: :unauthorized unless @current_user
    end


    def render_unprocessable_entity(exception)
    render json: { errors: exception.record.errors.full_messages}, status: :unprocessable_entity
    end


    def render_record_not_found
    render json: { error: ["Sorry, Record requested Not Found"] }, status: :not_found
    end
end
