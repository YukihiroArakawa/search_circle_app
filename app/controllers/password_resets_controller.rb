class PasswordResetsController < ApplicationController
  before_action :get_circle,   only: [:edit, :update]
  before_action :valid_circle, only: [:edit, :update]
  before_action :check_expiration, only: [:edit, :update]    

  def new
  end

  def create
    @circle = Circle.find_by(email: params[:password_reset][:email].downcase)
    if @circle
      @circle.create_reset_digest
      @circle.send_password_reset_email
      flash[:info] = "Email sent with password reset instructions"
      redirect_to root_url
    else
      flash.now[:danger] = "Email address not found"
      render 'new'
    end
  end

  def edit
  end

  def update
    if params[:circle][:password].empty?                  
      @circle.errors.add(:password, :blank)
      render 'edit'
    elsif @circle.update(circle_params)                     
      log_in @circle
      flash[:success] = "Password has been reset."
      redirect_to @circle
    else
      render 'edit'                                     
    end
  end

  private

    def circle_params
      params.require(:circle).permit(:password, :password_confirmation)
    end

    # beforeフィルタ

    def get_circle
      @circle = Circle.find_by(email: params[:email])
    end

    # 正しいユーザーかどうか確認する
    def valid_circle
      unless (@circle && @circle.activated? &&
              @circle.authenticated?(:reset, params[:id]))
        redirect_to root_url
      end
    end

    # トークンが期限切れかどうか確認する
    def check_expiration
      if @circle.password_reset_expired?
        flash[:danger] = "Password reset has expired."
        redirect_to new_password_reset_url
      end
    end

end
