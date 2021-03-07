require 'test_helper'

class PasswordResetsTest < ActionDispatch::IntegrationTest

  def setup
    ActionMailer::Base.deliveries.clear
    @circle = circles(:tennis)
  end

  test "password resets" do
    get new_password_reset_path
    assert_template 'password_resets/new'
    assert_select 'input[name=?]', 'password_reset[email]'
    # メールアドレスが無効
    post password_resets_path, params: { password_reset: { email: "" } }
    assert_not flash.empty?
    assert_template 'password_resets/new'
    # メールアドレスが有効
    post password_resets_path,
         params: { password_reset: { email: @circle.email } }
    assert_not_equal @circle.reset_digest, @circle.reload.reset_digest
    assert_equal 1, ActionMailer::Base.deliveries.size
    assert_not flash.empty?
    assert_redirected_to root_url
    # パスワード再設定フォームのテスト
    circle = assigns(:circle)
    # メールアドレスが無効
    get edit_password_reset_path(circle.reset_token, email: "")
    assert_redirected_to root_url
    # 無効なユーザー
    circle.toggle!(:activated)
    get edit_password_reset_path(circle.reset_token, email: circle.email)
    assert_redirected_to root_url
    circle.toggle!(:activated)
    # メールアドレスが有効で、トークンが無効
    get edit_password_reset_path('wrong token', email: circle.email)
    assert_redirected_to root_url
    # メールアドレスもトークンも有効
    get edit_password_reset_path(circle.reset_token, email: circle.email)
    assert_template 'password_resets/edit'
    assert_select "input[name=email][type=hidden][value=?]", circle.email
    # 無効なパスワードとパスワード確認
    patch password_reset_path(circle.reset_token),
          params: { email: circle.email,
                    circle: { password:              "foobaz",
                            password_confirmation: "barquux" } }
    assert_select 'div#error_explanation'
    # パスワードが空
    patch password_reset_path(circle.reset_token),
          params: { email: circle.email,
                    circle: { password:              "",
                              password_confirmation: "" } }
    assert_select 'div#error_explanation'
    # 有効なパスワードとパスワード確認
    patch password_reset_path(circle.reset_token),
          params: { email: circle.email,
                    circle: { password:              "foobaz",
                            password_confirmation: "foobaz" } }
    assert is_logged_in?
    assert_not flash.empty?
    assert_redirected_to circle
  end
end