class CommentsController < ApplicationController
  def create
    @comment = current_user.comments.new(comment_params)
    if @comment.save
    else
    end
    redirect_to root_path
  end

  def update
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end
end
