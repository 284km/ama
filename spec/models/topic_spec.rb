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

require "rails_helper"

RSpec.describe Topic, type: :model do
  describe "factory" do
    subject { build(:topic) }

    it { is_expected.to be_valid }
  end
end
