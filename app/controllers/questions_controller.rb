class QuestionsController < ApplicationController
  rescue_from ActiveRecord::RecordInvalid, with: :render_unproccessable_entity_response

      
    # GET /questions
    def index
      @questions = Question.all.order(id: :desc)
  
      render json: @questions,each_serializer: ShowQuestionAnswersCommentsSerializer
    end
  
    # GET /questions/1
    def show
      question = find_params
      # render json: question, include: [:all_answers]
      render json: question,serializer: ShowQuestionAnswersCommentsSerializer, include: ['answers.comments'] ,status: :ok
    end
  
    # POST /questions
    def create
      question = Question.create!(question_params)
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

    def view
      question = find_params
      question.update(views: question.views + 1)
      render json: question
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
        params.permit(:title,:body, :user_id, :views)  
      end
end
