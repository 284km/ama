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
  validates :github_id, presence: true, uniqueness: true
  validates :email,     presence: true, email_format: true
  validates :nickname,  presence: true

  def gravatar_url
    @gravatar_url ||= "https://www.gravatar.com/avatar/#{gravatar_id}"
  end

  def gravatar_id
    Digest::MD5.hexdigest(email.downcase)
  end

  before_save do
    self.remember_token ||= generate_remember_token
  end

  private

    def generate_remember_token
      SecureRandom.hex(20)
    end
end
