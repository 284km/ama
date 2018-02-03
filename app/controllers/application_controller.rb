class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :authenticate
  helper_method :current_user, :logged_in?

  private

    def authenticate
      unless logged_in?
        session[:referer] = request.fullpath
        redirect_to login_path
      end
    end

    def current_user
      @current_user ||=
        if session[:remember_token]
          User.find_by(remember_token: session[:remember_token])
        end
    rescue ActiveRecord::RecordNotFound
      reset_session
      nil
    end

    def logged_in?
      !current_user.nil?
    end
end
