class ApplicationController < ActionController::Base
  include SessionsHelper

  private

    # サークルのログインを確認する
    def logged_in_circle
      unless logged_in?
        store_location
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end

end
