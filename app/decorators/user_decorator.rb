module UserDecorator
  def github_url
    "https://github.com/#{nickname}"
  end

  def gravatar_url
    "https://www.gravatar.com/avatar/#{gravatar_id}"
  end

  def gravatar_id
    Digest::MD5.hexdigest(email.downcase)
  end
end
