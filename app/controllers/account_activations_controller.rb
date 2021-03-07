class AccountActivationsController < ApplicationController

  def edit
    circle = Circle.find_by(email: params[:email])
    if circle && !circle.activated? && circle.authenticated?(:activation, params[:id])
      circle.update_attribute(:activated,    true)
      circle.update_attribute(:activated_at, Time.zone.now)
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
