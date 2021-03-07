require "test_helper"

class CircleMailerTest < ActionMailer::TestCase
  
  test "account_activation" do
    circle = circles(:tennis)
    circle.activation_token = Circle.new_token
    mail = CircleMailer.account_activation(circle)
    assert_equal "Account activation", mail.subject
    assert_equal [circle.email], mail.to
    assert_equal ["noreply@example.com"], mail.from
    assert_match circle.name,             mail.body.encoded
    assert_match circle.activation_token,   mail.body.encoded
    assert_match CGI.escape(circle.email),  mail.body.encoded
  end

  test "password_reset" do
    circle = circles(:tennis)
    circle.reset_token = Circle.new_token
    mail = CircleMailer.password_reset(circle)
    assert_equal "Password reset", mail.subject
    assert_equal [circle.email], mail.to
    assert_equal ["noreply@example.com"], mail.from
    assert_match circle.reset_token,        mail.body.encoded
    assert_match CGI.escape(circle.email),  mail.body.encoded
  end

end
