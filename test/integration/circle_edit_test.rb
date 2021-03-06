require "test_helper"

class CircleEditTest < ActionDispatch::IntegrationTest
  def setup
    @circle = circles(:tennis)
  end

  test "unsuccessful edit" do
    log_in_as(@circle)
    get edit_circle_path(@circle)
    assert_template 'circles/edit'
    patch circle_path(@circle), params: { circle: { name: "",
                                                    email: "foo@invalid",
                                                    password: "foo",
                                                    password_confirmation: "bar" } }

    assert_template 'circles/edit'
  end

  test "successful edit" do
    log_in_as(@circle)
    get edit_circle_path(@circle)
    assert_template 'circles/edit'
    name  = "Foo Bar"
    email = "foo@bar.com"
    patch circle_path(@circle), params: { circle: { name: name,
                                                    email: email,
                                                    password: "",
                                                    password_confirmation: "" } }
    assert_not flash.empty?
    assert_redirected_to @circle
    @circle.reload
    assert_equal name,  @circle.name
    assert_equal email, @circle.email
  end

  test "successful edit with friendly forwarding" do
    get edit_circle_path(@circle)
    log_in_as(@circle)
    assert_redirected_to edit_circle_url(@circle)
    name  = "Foo Bar"
    email = "foo@bar.com"
    patch circle_path(@circle), params: { circle: { name:  name,
                                              email: email,
                                              password:              "",
                                              password_confirmation: "" } }
    assert_not flash.empty?
    assert_redirected_to @circle
    @circle.reload
    assert_equal name,  @circle.name
    assert_equal email, @circle.email
  end
end
