# == Schema Information
#
# Table name: comments
#
#  id          :integer          not null, primary key
#  topic_id    :integer          not null
#  user_id     :integer          not null
#  content     :text             not null
#  likes_count :integer          default(0), not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_comments_on_topic_id  (topic_id)
#  index_comments_on_user_id   (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (topic_id => topics.id)
#  fk_rails_...  (user_id => users.id)
#

class Comment < ApplicationRecord
  belongs_to :topic, counter_cache: true
  belongs_to :user

  has_many :likes, dependent: :destroy

  validates :content,     presence: true, length: { maximum: 2000 }
  validates :likes_count, presence: true
end
