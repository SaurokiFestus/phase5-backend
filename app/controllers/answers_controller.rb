class AnswersController < ApplicationController
  before_action :set_answer, only: %i[ show update destroy ]

  # GET /answers
  def index
    @answers = Answer.all

    render json: @answers
  end

  # GET /answers/1
  def show
    render json: @answer ,serializer: ShowAnswerAndCommentsSerializer
  end

  # POST /answers
  def create
    @answer = Answer.new(answer_params)

    if @answer.save
      render json: @answer, status: :created, location: @answer
    else
      render json: @answer.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /answers/1
  def change_votes_increment
    @answer =Answer.find(params[:id])
    byebug
    @answer.update(downvote: @answer.downvote - 1, upvote: @answer.update + 1 )
    render json: @answer
  end
  
  def change_votes_decrement
    @answer =Answer.find(params[:id])
    @answer.update(downvote: @answer.downvote + 1)
    # @answer.update(upvote: @answer.upvote - 1)
    render json: @answer
  end


  # increment upvotedef decrement_slots
  def change_votes_increment
    @answer =Answer.find(params[:id])
    @answer.update(upvote: @answer.upvote + 1 )
    render json: @answer
  end



  def update
    if @answer.update(answer_params)
      render json: @answer
    else
      render json: @answer.errors, status: :unprocessable_entity
    end
  end

  # DELETE /answers/1
  def destroy
    @answer.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_answer
      @answer = Answer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def answer_params
      params.permit(:body, :upvote, :downvote , :upvote , :question_id, :user_id)  
    end
end
