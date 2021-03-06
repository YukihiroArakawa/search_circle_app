module SessionsHelper

  #渡されたユーザでログインする
  def log_in(circle)
    session[:circle_id] = circle.id
  end

  #現在ログイン中のユーザーを返す(いる場合)
  def current_circle
    if session[:circle_id]
      @current_circle ||= Circle.find_by(id:session[:circle_id])
    end
  end

  #ログイン中であればtrue,その他ならfalseを返す
  def logged_in?
    !current_circle.nil?
  end

  #現在のユーザをログアウトする
  def log_out 
    session.delete(:circle_id)
    @current_circle = nil
  end
end
