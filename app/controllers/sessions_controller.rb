class SessionsController < ApplicationController

  def new
  end
  
  def create
    circle = Circle.find_by(email:params[:session][:email].downcase)
    if circle && circle.authenticate(params[:session][:password])
      log_in circle
      redirect_to circle
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end

end
