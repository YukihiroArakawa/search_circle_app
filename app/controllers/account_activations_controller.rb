class AccountActivationsController < ApplicationController

  def edit
    circle = Circle.find_by(email: params[:email])
    if circle && !circle.activated? && circle.authenticated?(:activation, params[:id])
      circle.activate
      log_in circle
      flash[:success] = "Account activated!"
      redirect_to circle
    else
      flash[:danger] = "Invalid activation link"
      redirect_to root_url
    end
  end

end
