module OmniAuthHelper
  def prepare_mock_auth_from(user)
    OmniAuth.config.mock_auth[:github] = OmniAuth::AuthHash.new(
      "provider" => "github",
      "uid"      => user.github_id,
      "info" => {
        "email"    => user.email,
        "nickname" => user.nickname,
      },
    )
  end

  def authenticate_as(user)
    prepare_mock_auth_from(user)
    visit login_path
    click_link I18n.t("sessions.new.login")
  end
end
