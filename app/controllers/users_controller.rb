class UsersController < ApplicationController
  def index
    @users = User.order(id: :desc).page(params[:page])
  end

  def show
    @user = User.find(params[:id])
    @comments = @user.comments.eager_load(:topic).order(likes_count: :desc).page(params[:page])
  end
end
