class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :edit, :update, :destroy]

  def index
    @comments = Comment.order(id: :desc).page(params[:page])
  end

  def show
  end

  def new
    @comment = Comment.new
  end

  def edit
  end

  def create
    @comment = current_user.comments.new(comment_params)

    if @comment.save
      redirect_to @comment.topic, flash: { success: t("flash.created", resource: @comment.model_name.human) }
    else
      render "comments/new"
    end
  end

  def update
    if @comment.update(comment_params)
      redirect_to @comment.topic, flash: { success: t("flash.updated", resource: @comment.model_name.human) }
    else
      render :edit
    end
  end

  def destroy
    @comment.destroy!
    redirect_to @comment.topic, flash: { success: t("flash.destroyed", resource: Comment.model_name.human) }
  end

  private

    def set_comment
      @comment = Comment.find(params[:id])
    end

    def comment_params
      params.require(:comment).permit(:topic_id, :content)
    end
end
