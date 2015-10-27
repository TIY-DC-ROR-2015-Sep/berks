class RegistrationsController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]

  def new
  end

  def create
    User.create!(
      name: params[:name],
      email: params[:email],
      password: params[:password]
    )
    redirect_to "/"
  end
end
