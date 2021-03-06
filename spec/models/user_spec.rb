# == Schema Information
#
# Table name: users
#
#  id             :integer          not null, primary key
#  github_id      :integer          not null
#  email          :string           not null
#  nickname       :string           not null
#  remember_token :string           not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  comments_count :integer          default(0), not null
#  likes_count    :integer          default(0), not null
#  admin          :boolean          default(FALSE), not null
#
# Indexes
#
#  index_users_on_github_id       (github_id) UNIQUE
#  index_users_on_remember_token  (remember_token) UNIQUE
#

require "rails_helper"

RSpec.describe User, type: :model do
  describe "factory" do
    subject { build(:user) }

    it { is_expected.to be_valid }
  end

  describe "email validation" do
    it { expect(build(:user, email: "admin@example.com")).to be_valid }
    it { expect(build(:user, email: "id+user-name@users.noreply.github.com")).to be_valid }
  end

  describe "remember_token" do
    subject { user.remember_token }

    let(:user) { build(:user) }

    context "before saved" do
      it { is_expected.to be_nil }
    end

    context "after saved" do
      before { user.save! }

      it { is_expected.to be_a(String) }
    end
  end
end
