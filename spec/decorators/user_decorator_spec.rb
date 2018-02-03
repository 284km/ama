require "rails_helper"

describe UserDecorator do
  describe "decorate" do
    subject { user }

    let(:user) { User.new.extend UserDecorator }

    it { should be_a User }
  end

  describe "#gravatar_id" do
    before { user.extend UserDecorator }

    subject { user.gravatar_id }

    let(:user) { build(:user) }

    it { is_expected.to eq Digest::MD5.hexdigest(user.email.downcase) }
  end

  describe "#gravatar_url" do
    before { user.extend UserDecorator }

    subject { user.gravatar_url }

    let(:user) { build(:user) }

    it { is_expected.to eq "https://www.gravatar.com/avatar/#{user.gravatar_id}" }
  end
end
