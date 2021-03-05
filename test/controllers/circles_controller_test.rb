require "test_helper"

class CirclesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get circles_new_url
    assert_response :success
  end
end
