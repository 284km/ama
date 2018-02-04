# == Schema Information
#
# Table name: topics
#
#  id             :integer          not null, primary key
#  user_id        :integer          not null
#  title          :string           not null
#  description    :text             not null
#  comments_count :integer          default(0), not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
# Indexes
#
#  index_topics_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#

class Topic < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy

  validates :title,          presence: true, length: { maximum: 128 }
  validates :description,    presence: true, length: { maximum: 2000 }
  validates :comments_count, presence: true
end
