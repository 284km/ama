class SessionsController < ApplicationController
  skip_before_action :authenticate, only: %i[new create]

  def new
  end

  def create
    create_session
    redirect_to referer_or_root_path, notice: t("flash.logged_in")
  end

  def destroy
    reset_session
    redirect_to login_path, notice: t("flash.logged_out")
  end

  private

    def user
      @user ||= User.find_or_initialize_by(github_id: github_id).tap do |u|
        u.email    = github_email
        u.nickname = github_nickname
        u.save!
      end
    end

    def create_session
      session[:remember_token] = user.remember_token
    end

    def referer_or_root_path
      session.delete(:referer) || root_path
    end

    def github_id
      request.env["omniauth.auth"]["uid"]
    end

    def github_email
      request.env["omniauth.auth"]["info"]["email"]
    end

    def github_nickname
      request.env["omniauth.auth"]["info"]["nickname"]
    end
end
