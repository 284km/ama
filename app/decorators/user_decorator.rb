module UserDecorator
  def gravatar_url
    @gravatar_url ||= "https://www.gravatar.com/avatar/#{gravatar_id}"
  end

  def gravatar_id
    Digest::MD5.hexdigest(email.downcase)
  end
end
