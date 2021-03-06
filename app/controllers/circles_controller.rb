class CirclesController < ApplicationController

  def show
    @circle = Circle.find(params[:id])
    
  end

  def new
    @circle = Circle.new
  end

  def create 
    @circle = Circle.new(circle_params)
    if @circle.save
      log_in @circle
      flash[:success] = "ご登録ありがとうございます！"
      redirect_to @circle
    else
      render 'new'
    end
  end

  private

    def circle_params
      params.require(:circle).permit(:name,:email,:password,
                  :password_confirmation,:genre,:place,:frequency,
                  :sex,:introduction,:event,:deadline,:sns)
    end
end
