require "test_helper"

class CirclesSignupTest < ActionDispatch::IntegrationTest

  test "invalid signup information" do
    get signup_path
    assert_no_difference 'Circle.count' do
      post circles_path,params:{ circle:{name:"",
                            email:"circle@invalid",
                            password: "foo",
                            password_confirmation:"bar"}}
    end
    assert_template 'circles/new'
  end


  test "valid singup information" do
    get signup_path
    assert_difference 'Circle.count',1 do
      post circles_path,params:{circle:{name:"Example Circle",
                                email:"circle@example.com",
                                password: "password",
                                password_confirmation:"password"}}
    end
    follow_redirect!
    assert_template 'circles/show'
    assert is_logged_in?
  end
end
