require "test_helper"

class CirclesIndexTest < ActionDispatch::IntegrationTest

  def setup
    @admin = circles(:tennis)
    @non_admin = circles(:baseball)
  end

  test "index as admin including pagination and delete links" do
    log_in_as(@admin)
    get circles_path
    assert_template 'circles/index'
    assert_select 'div.pagination'
    first_page_of_circles = Circle.paginate(page: 1)
    first_page_of_circles.each do |circle|
      assert_select 'a[href=?]', circle_path(circle), text: circle.name
      unless circle == @admin
        assert_select 'a[href=?]', circle_path(circle), text: 'delete'
      end
    end
    assert_difference 'Circle.count', -1 do
      delete circle_path(@non_admin)
    end
  end

  test "index as non-admin" do
    log_in_as(@non_admin)
    get circles_path
    assert_select 'a', text: 'delete', count: 0
  end
end
