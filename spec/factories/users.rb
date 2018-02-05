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

FactoryBot.define do
  factory :user do
    sequence(:github_id)
    email    { Faker::Internet.unique.email }
    nickname { Faker::Internet.user_name }
  end
end
