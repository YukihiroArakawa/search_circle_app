require "test_helper"

class CirclesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @circle = circles(:tennis)
    @other_circle = circles(:baseball)
  end

  test "should get new" do
    get signup_path
    assert_response :success
  end

  test "should redirect index when not logged in" do
    get circles_path
    assert_redirected_to login_url
  end

  test "should redirect edit when not logged in" do
    get edit_circle_path(@circle)
    assert_not flash.empty?
    assert_redirected_to login_url
  end

  test "should redirect update when not logged in" do
    patch circle_path(@circle), params: { user: { name: @circle.name,
                                                  email: @circle.email } }
    assert_not flash.empty?
    assert_redirected_to login_url
  end

  test "should redirect edit when logged in as wrong circle" do
    log_in_as(@other_circle)
    get edit_circle_path(@circle)
    assert flash.empty?
    assert_redirected_to root_url
  end

  test "should redirect update when logged in as wrong circle" do
    log_in_as(@other_circle)
    patch circle_path(@circle), params: { circle: { name: @circle.name,
                                                    email: @circle.email } }
    assert flash.empty?
    assert_redirected_to root_url
  end

  test "should redirect destroy when not logged in" do
    assert_no_difference 'Circle.count' do
      delete circle_path(@circle)
    end
    assert_redirected_to login_url
  end

  test "should redirect destroy when logged in as a non-admin" do
    log_in_as(@other_circle)
    assert_no_difference 'Circle.count' do
      delete circle_path(@circle)
    end
    assert_redirected_to root_url
  end

end
