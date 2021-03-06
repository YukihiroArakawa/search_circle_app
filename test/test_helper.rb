ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'rails/test_help'
require "minitest/reporters"
Minitest::Reporters.use!

class ActiveSupport::TestCase
  fixtures :all

  # テストユーザーがログイン中の場合にtrueを返す
  def is_logged_in?
    !session[:circle_id].nil?
  end

  def log_in_as(circle)
    session[:circle_id] = circle.id
  end
end

class ActionDispatch::IntegrationTest

  # テストユーザーとしてログインする
  def log_in_as(circle, password: 'password', remember_me: '1')
    post login_path, params: { session: { email: circle.email,
                                          password: password,
                                          remember_me: remember_me } }
  end
end