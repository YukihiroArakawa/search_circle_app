class MicropostsController < ApplicationController
  before_action :logged_in_circle, only:[:create,:destroy]
  before_action :correct_circle, only: :destroy

  def create
    @micropost = current_circle.microposts.build(micropost_params)
    @micropost.image.attach(params[:micropost][:image])
    if @micropost.save
      flash[:success] = "ブログが投稿されました!"
      redirect_to request.referrer || root_url #一つ前のURLを返す
    else
      redirect_to request.referrer || root_url
    end
  end

  def destroy
    @micropost.destroy
    flash[:success] = "投稿は削除されました"
    redirect_to request.referrer || root_url
  end

  private
    def micropost_params
      params.require(:micropost).permit(:content,:image)
    end

    def correct_circle
      @micropost = current_circle.microposts.find_by(id:params[:id])
      redirect_to root_url if @micropost.nil?
    end
end
