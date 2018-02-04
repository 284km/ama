class LikesController < ApplicationController
  def create
    comment = Comment.find(params[:comment_id])
    current_user.likes.create!(comment: comment)
  rescue ActiveRecord::RecordInvalid => e
    logger.warn e.message
  ensure
    redirect_back(fallback_location: comment.topic)
  end
end
