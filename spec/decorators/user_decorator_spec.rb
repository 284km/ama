require "rails_helper"

describe UserDecorator do
  subject { user }

  let(:user) { User.new.extend UserDecorator }

  it { should be_a User }
end
