class CommentsController < ApplicationController
# before_action :find_comment, only [:destroy, :edit, :update]

def index 
    @comment= Comment.all
    render json: @comment
end

def create
    @comment=Comment.new(comments_params)

    if  @comment.save
        render json: @comment ,status: :created
    else 
        render json: @comment.errors, status: :unprocessable_entity
    end
end


def destroy
    @comment.destroy

end
def update
    if @comment.update(comments_params)
        render json: @comment
    else 
        render json: @comment.errors, status: :unprocessable_entity
    end
end

private

def comments_params
    params.permit(:body ,:user_id,:answer_id)
end

def find_comment
    @comment = Comment.find(params[:comment_id])
end
end
