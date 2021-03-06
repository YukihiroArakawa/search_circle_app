class SessionsController < ApplicationController
  def new; end

  def create
    circle = Circle.find_by(email: params[:session][:email].downcase)
    if circle&.authenticate(params[:session][:password])
      log_in circle
      params[:session][:remember_me] == '1' ? remember(circle) : forget(circle)
      redirect_back_or circle
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end
end
