class CirclesController < ApplicationController
  before_action :logged_in_circle, only:[:index,:edit,:update, :destroy]
  before_action :correct_circle, only:[:edit,:update]
  before_action :admin_circle, only: :destroy

  def index
    @circles = Circle.paginate(page: params[:page])
  end

  def show
    @circle = Circle.find(params[:id])
  end

  def new
    @circle = Circle.new
  end

  def create
    @circle = Circle.new(circle_params)
    if @circle.save
      @circle.send_activation_email
      flash[:info] = "アカウントを有効化するために送信されたメールのリンクをクリックしてください！"
      redirect_to root_url
    else
      render 'new'
    end
  end

  def edit
    @circle = Circle.find(params[:id])
  end

  def update
    @circle = Circle.find(params[:id])
    if @circle.update(circle_params)
      flash[:success] = "プロフィールが変更されました！"
      redirect_to @circle
    else
      render 'edit'
    end
  end

  def destroy
    Circle.find(params[:id]).destroy
    flash[:success] = "サークルが削除されました"
    redirect_to circles_url
  end

  private

  def circle_params
    params.require(:circle).permit(:name, :email, :password,
                                   :password_confirmation, :genre, :place, :frequency,
                                   :sex, :introduction, :event, :deadline, :sns)
  end

  #beforeアクション

  #ログイン済みユーザかどうか確認
  def logged_in_circle
    unless logged_in?
      store_location
      flash[:danger] = "Please log in."
      redirect_to login_url
    end
  end

  # 正しいサークルかどうか確認
  def correct_circle
    @circle = Circle.find(params[:id])
    redirect_to(root_url) unless current_circle?(@circle)
  end

  #管理者かどうか確認
  def admin_circle
    redirect_to(root_url) unless current_circle.admin?
  end
end
