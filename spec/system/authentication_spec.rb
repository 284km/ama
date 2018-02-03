require "rails_helper"

RSpec.describe "Authentication", type: :system do
  let(:user) { build(:user) }

  it "login" do
    prepare_mock_auth_from(user)
    visit login_path
    click_link I18n.t("sessions.new.login")
    expect(page).to have_content I18n.t("flash.logged_in")
  end

  it "logout" do
    authenticate_as(user)
    click_link "logout"
    expect(page).to have_content I18n.t("flash.logged_out")
  end
end
