class ApplicationController < ActionController::Base
  include Pundit
  after_action :verify_authorized, except: :index

  protect_from_forgery with: :exception
  helper_method :current_user

  before_action :require_login

  def current_user
    @_current_user ||= User.find_by_id(session[:user_id])
  end

  def require_login
    unless current_user
      redirect_to "/login"
    end
  end
end
