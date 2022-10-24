class CommentsController < ApplicationController
before_action :find_comment, only [:destroy, :edit, :update]
def create
    @comment = @answer.comments.create(:params[:comment].permit(:content))
    @comment.user_id = current_user.id
    @comment.save

    if  @comment.save
        redirect_to answer_path(@answer)
    else 
        render 'new'
    end
end
def destroy
    @comment.destroy
    redirect_to answer_path(@answer)

end
def update
    if @comment.update(params[:comment].permit(:content)
        redirect_to answer_path(@answer)
    else 
        render 'edit'
    end
end

private

def find_comment
    @comment = Comment.find(params[:comment_id])
end
end
