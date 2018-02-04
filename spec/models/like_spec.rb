# == Schema Information
#
# Table name: likes
#
#  id         :integer          not null, primary key
#  user_id    :integer          not null
#  comment_id :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_likes_on_user_id_and_comment_id  (user_id,comment_id) UNIQUE
#
# Foreign Keys
#
#  fk_rails_...  (comment_id => comments.id)
#  fk_rails_...  (user_id => users.id)
#

require "rails_helper"

RSpec.describe Like, type: :model do
  describe "factory" do
    subject { build(:like) }

    it { is_expected.to be_valid }
  end
end
