class ApplicationController < ActionController::Base
  include Pundit

  protect_from_forgery with: :exception

  before_action :authenticate, :set_page_meta_tags
  helper_method :current_user, :logged_in?, :default_meta_tags

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  private

    def user_not_authorized(exception)
      policy_name = exception.policy.class.to_s.underscore
      flash[:danger] = t("#{policy_name}.#{exception.query}", scope: :pundit, default: :default)
      redirect_to(request.referer || root_path)
    end

    def authenticate
      unless logged_in?
        session[:referer] = request.fullpath
        redirect_to login_path
      end
    end

    def set_page_meta_tags
      @page_title = t(".title", default: "")
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

    def default_meta_tags
      {
        site: t("application.name"),
        reverse: true,
        description: t("application.description"),
        keywords: t("application.keywords"),
        canonical: request.original_url,
      }
    end
end
