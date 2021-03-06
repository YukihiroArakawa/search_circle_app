module SessionsHelper
  # 渡されたユーザでログインする
  def log_in(circle)
    session[:circle_id] = circle.id
  end

  # ユーザーのセッションを永続的にする
  def remember(circle)
    circle.remember
    cookies.permanent.signed[:circle_id] = circle.id
    cookies.permanent[:remember_token] = circle.remember_token
  end

  # 記憶トークンcookieに対応するユーザーを返す
  def current_circle
    if (circle_id = session[:circle_id])
      @current_user ||= Circle.find_by(id: circle_id)
    elsif (circle_id = cookies.signed[:circle_id])
      circle = Circle.find_by(id: circle_id)
      if circle&.authenticated?(:remember,cookies[:remember_token])
        log_in circle
        @current_circle = circle
      end
    end
  end

  # 渡されたユーザーがカレントユーザーであればtrueを返す
  def current_circle?(circle)
    circle && circle == current_circle
  end

  # ログイン中であればtrue,その他ならfalseを返す
  def logged_in?
    !current_circle.nil?
  end

  # 現在のユーザをログアウトする
  def log_out
    session.delete(:circle_id)
    @current_circle = nil
  end

  # 永続的セッションを破棄する
  def forget(circle)
    circle.forget
    cookies.delete(:circle_id)
    cookies.delete(:remember_token)
  end

  # 現在のユーザーをログアウトする
  def log_out
    forget(current_circle)
    session.delete(:circle_id)
    @current_circle = nil
  end

  # 記憶したURL（もしくはデフォルト値）にリダイレクト
  def redirect_back_or(default)
    redirect_to(session[:forwarding_url] || default)
    session.delete(:forwarding_url)
  end

  # アクセスしようとしたURLを覚えておく
  def store_location
    session[:forwarding_url] = request.original_url if request.get?
  end
end
