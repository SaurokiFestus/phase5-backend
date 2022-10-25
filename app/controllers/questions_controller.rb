class QuestionsController < ApplicationController
  rescue_from ActiveRecord::RecordInvalid, with: :render_unproccessable_entity_response

      
    # GET /questions
    def index
      @questions = Question.all.order(id: :desc)
  
      render json: @questions
    end
  
    # GET /questions/1
    def show
      question = find_params
      render json: question ,status: :ok

      # render json: @question, status: :ok
    end
  
    # POST /questions
    def create
      question = Question.new(question_params)
      render json: question ,status: :ok
    end
  
    # PATCH/PUT /questions/1
    def update
      question = find_params
      question.update!(question_params)
      render json: question, status: :ok
    end
  
    # DELETE /questions/1
    def destroy
    find_params.destroy
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def find_params
        Question.find(params[:id])
    end

    def render_unproccessable_entity_response(invalid)
      render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end
  
      # Only allow a list of trusted parameters through.
      def question_params
        params.permit(:title,:body, :user_id)  
      end
end
