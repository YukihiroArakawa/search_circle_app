require "test_helper"

class CirclesSignupTest < ActionDispatch::IntegrationTest

  def setup
    ActionMailer::Base.deliveries.clear
  end

  test "invalid signup information" do
    get signup_path
    assert_no_difference 'Circle.count' do
      post circles_path, params: { circle: { name: "",
                                             email: "circle@invalid",
                                             password: "foo",
                                             password_confirmation: "bar" } }
    end
    assert_template 'circles/new'
  end

  test "valid signup information with account activation" do
    get signup_path
    assert_difference 'Circle.count', 1 do
      post circles_path, params: { circle: { name:  "Example Circle",
                                         email: "circle@example.com",
                                         password:              "password",
                                         password_confirmation: "password" } }
    end
    assert_equal 1, ActionMailer::Base.deliveries.size
    circle = assigns(:circle)
    assert_not circle.activated?
    # 有効化していない状態でログインしてみる
    log_in_as(circle)
    assert_not is_logged_in?
    # 有効化トークンが不正な場合
    get edit_account_activation_path("invalid token", email: circle.email)
    assert_not is_logged_in?
    # トークンは正しいがメールアドレスが無効な場合
    get edit_account_activation_path(circle.activation_token, email: 'wrong')
    assert_not is_logged_in?
    # 有効化トークンが正しい場合
    get edit_account_activation_path(circle.activation_token, email: circle.email)
    assert circle.reload.activated?
    follow_redirect!
    assert_template 'circles/show'
    assert is_logged_in?
  end
end
