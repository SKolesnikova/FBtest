class MainController < ApplicationController
  def index
    @users = User.all
    @comments = Comment.all
  end
end
