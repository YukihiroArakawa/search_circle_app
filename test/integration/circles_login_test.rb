require "test_helper"

class CirclesLoginTest < ActionDispatch::IntegrationTest
  def setup
    @circle = circles(:tennis)
  end

  test "login with valid email/ invalid password" do
    get login_path
    assert_template 'sessions/new'
    post login_path, params: { session: { email: @circle.email,
                                          password: "invalid" } }
    assert_not is_logged_in?
    assert_template 'sessions/new'
    assert_not flash.empty?
    get root_path
    assert flash.empty?
  end

  test "login with valid information followed by logout" do
    get login_path
    post login_path, params: { session: { email: @circle.email,
                                          password: 'password' } }
    assert is_logged_in?
    assert_redirected_to @circle
    follow_redirect!
    assert_template 'circles/show'
    assert_select "a[href=?]", login_path, count: 0
    assert_select "a[href=?]", logout_path
    assert_select "a[href=?]", circle_path(@circle)
    delete logout_path
    assert_not is_logged_in?
    assert_redirected_to root_url
    # 2番目のウィンドウでログアウトをクリックするユーザーをシミュレートする
    delete logout_path
    follow_redirect!
    assert_select "a[href=?]", login_path
    assert_select "a[href=?]", logout_path, count: 0
    assert_select "a[href=?]", circle_path(@circle), count: 0
  end

  test "login with remembering" do
    log_in_as(@circle, remember_me: '1')
    assert_not_empty cookies[:remember_token]
  end

  test "login without remembering" do
    # cookieを保存してログイン
    log_in_as(@circle, remember_me: '1')
    delete logout_path
    # cookieを削除してログイン
    log_in_as(@circle, remember_me: '0')
    assert_empty cookies[:remember_token]
  end
end
