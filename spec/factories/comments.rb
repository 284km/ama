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

FactoryBot.define do
  factory :comment do
    association :topic
    association :user
    content { Faker::Lorem.paragraph }
  end
end
