class AllAnswersController < ApplicationController
        before_action :set_allanswer, only: %i[ show update destroy ]
      
        # GET /allanswers
        def index
          @allanswers = AllAnswer.all
      
          render json: @allanswers
        end
      
        # GET /allanswers/1
        def show
          render json: @allanswer
        end
      
        # POST /allanswers
        def create
          @allanswer = AllAnswer.new(allanswer_params)

      
          if @allanswer.save
            render json: @allanswer, status: :created, location: @allanswer
          else
            render json: @allanswer.errors, status: :unprocessable_entity
          end
        end
      
        # PATCH/PUT /allanswers/1
        def update
          if @allanswer.update(allanswer_params)
            render json: @allanswer
          else
            render json: @allanswer.errors, status: :unprocessable_entity
          end
        end
      
        # DELETE /allanswers/1
        def destroy
          @allanswer.destroy
        end
      
        private
          # Use callbacks to share common setup or constraints between actions.
          def set_allanswer
            @allanswer = AllAnswer.find(params[:id])
          end
      
          # Only allow a list of trusted parameters through.
          def allanswer_params
            params.permit(:body, :upvote, :downvote , :upvote , :question_id, :user_id)  
          end
      
      
end
