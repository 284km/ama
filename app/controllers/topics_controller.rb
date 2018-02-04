class TopicsController < ApplicationController
  before_action :set_topic, only: [:show, :edit, :update, :destroy]

  def index
    @topics = Topic.eager_load(:user).order(id: :asc).page(params[:page])
  end

  def show
    @comments = @topic.comments.eager_load(:user).order(likes_count: :desc).page(params[:page])
  end

  def new
    @topic = Topic.new
  end

  def edit
  end

  def create
    @topic = current_user.topics.new(topic_params)

    if @topic.save
      redirect_to @topic, flash: { success: t("flash.created", resource: @topic.model_name.human) }
    else
      render :new
    end
  end

  def update
    if @topic.update(topic_params)
      redirect_to @topic, flash: { success: t("flash.updated", resource: @topic.model_name.human) }
    else
      render :edit
    end
  end

  def destroy
    @topic.destroy!
    redirect_to topics_url, flash: { success: t("flash.destroyed", resource: Topic.model_name.human) }
  end

  private

    def set_topic
      @topic = Topic.find(params[:id])
    end

    def topic_params
      params.require(:topic).permit(:title, :description)
    end
end
