class LikesController < ApplicationController
  def create
    comment = Comment.find(params[:comment_id])
    current_user.likes.find_or_create_by!(comment: comment)
    redirect_back(fallback_location: comment.topic)
  end

  def destroy
    comment = Comment.find(params[:comment_id])
    current_user.likes.find_by(comment: comment)&.destroy!
    redirect_back(fallback_location: comment.topic)
  end
end
