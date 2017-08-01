class MainController < ApplicationController
  def index
    @users = User.all
    @comments = Comment.order(:id)
  end
end
