# Preview all emails at http://localhost:3000/rails/mailers/circle_mailer
class CircleMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/circle_mailer/account_activation
  def account_activation
    circle = Circle.first
    circle.activation_token = Circle.new_token
    CircleMailer.account_activation(circle)
  end

  # Preview this email at http://localhost:3000/rails/mailers/circle_mailer/password_reset
  def password_reset
    circle = Circle.first
    circle.reset_token = Circle.new_token
    CircleMailer.password_reset(circle)
  end

end
