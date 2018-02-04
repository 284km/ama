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
#  index_comments_on_likes_count  (likes_count)
#  index_comments_on_topic_id     (topic_id)
#  index_comments_on_user_id      (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (topic_id => topics.id)
#  fk_rails_...  (user_id => users.id)
#

require "rails_helper"

RSpec.describe Comment, type: :model do
  describe "factory" do
    subject { build(:comment) }

    it { is_expected.to be_valid }
  end
end
