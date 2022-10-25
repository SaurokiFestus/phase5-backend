class QuestionsController < ApplicationController
      
    # GET /questions
    def index
      @questions = Question.all.order(id: :desc)
  
      render json: @questions
    end
  
    # GET /questions/1
    def show
      render json: @question,serializer: ShowQuestionAnswersCommmentsSerializer, status: :ok
    end
  
    # POST /questions
    def create
      @question = Question.new(question_params)

  
      if @question.save
        render json: @question, status: :created, location: @question
      else
        render json: @question.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /questions/1
    def update
      if @question.update(question_params)
        render json: @question
      else
        render json: @question.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /questions/1
    def destroy
      @question.destroy
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_question
        @question = Question.find(params[:id])
      end
  
      # Only allow a list of trusted parameters through.
      def question_params
        params.permit(:title,:body, :user_id)  
      end
end
