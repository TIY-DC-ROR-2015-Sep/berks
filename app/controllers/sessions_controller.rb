class SessionsController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]

  def new
  end

  def create
    u = User.find_by_email params[:email]
    if u.authenticate(params[:password])
      session[:user_id] = u.id
      redirect_to "/"
    else
      redirect_to "/login"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to "/"
  end
end
