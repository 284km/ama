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
#
# Indexes
#
#  index_users_on_github_id       (github_id) UNIQUE
#  index_users_on_remember_token  (remember_token) UNIQUE
#

class User < ApplicationRecord
end
