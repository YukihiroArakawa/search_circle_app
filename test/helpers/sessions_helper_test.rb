require 'test_helper'

class SessionsHelperTest < ActionView::TestCase

  def setup
    @circle = circles(:tennis)
    remember(@circle)
  end

  test "current_user returns right user when session is nil" do
    assert_equal @circle, current_user
    assert is_logged_in?
  end

  test "current_user returns nil when remember digest is wrong" do
    @circle.update_attribute(:remember_digest, Circle.digest(Circle.new_token))
    assert_nil current_circle
  end
end