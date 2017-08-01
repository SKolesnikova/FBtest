class MainController < ApplicationController
  def index
    @users = User.where.not(id: current_user.id)
    @comments = Comment.order(:id)
  end
end
