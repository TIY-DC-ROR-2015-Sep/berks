class ApplicationController < ActionController::Base
  include Pundit
  # after_action :verify_authorized, except: :index

  protect_from_forgery with: :exception
  helper_method :current_user

  before_action :require_login

  rescue_from Pundit::NotAuthorizedError do |e|
    flash[:danger] = "You are not allowed to #{e.query.sub '?', ''} this #{e.record.class.name}!"
    redirect_to login_path
  end

  def current_user
    @_current_user ||= User.find_by_id(session[:user_id])
  end

  def require_login
    unless current_user
      redirect_to "/login"
    end
  end
end
