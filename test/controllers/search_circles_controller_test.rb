require "test_helper"

class SearchCirclesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get search_path
    assert_response :success
  end
end
