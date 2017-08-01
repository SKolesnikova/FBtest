class CommentsController < ApplicationController
  def create
    @comment = current_user.comments.new(comment_params)
    redirect_to root_path
  end

  def update
    @comment = current_user.comments.find(params[:id])
    @comment.update_attribute('body', params[:comment])
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end
end
