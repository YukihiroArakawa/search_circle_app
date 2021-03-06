require "test_helper"

class CircleTest < ActiveSupport::TestCase
  def setup
    @circle = Circle.new(name:"Example Circle",email:"circle@example.com",
                          password:"foobar",password_confirmation:"foobar")
  end

  test"should be valid" do
    assert @circle.valid?
  end

  test"name should be present"do
    @circle.name = "  "
    assert_not @circle.valid?
  end

  test"email should be present" do
    @circle.email = "  "
    assert_not @circle.valid?
  end

  test "name should not be too long" do
    @circle.name = "a"*51
    assert_not @circle.valid?
  end

  test"email should not be too long" do
    @circle.email = "a"*244 + "@example.com"
    assert_not @circle.valid?
  end

  test "email validation should accept valid addresses" do
    valid_addresses =%w[user@example.com USER@foo.COM A_US-ER@foo.bar.org
      first.last@foo.jp alice+bob@baz.cn]
    valid_addresses.each do |valid_address|
      @circle.email = valid_address
      assert @circle.valid?, "#{valid_address.inspect} should be valid"
    end
  end 

  test "email validation should reject invalid addresses" do
    invalid_addresses = %w[user@example,com user_at_foo.org user.name@example.
            foo@bar_baz.com foo@bar+baz.com]
    invalid_addresses.each do |invalid_address|
      @circle.email = invalid_addresses
      assert_not @circle.valid?,"#{invalid_addresses.inspect} should be invalid"
    end
  end

  test "email addresses should be unique" do
    duplicate_circle = @circle.dup
    @circle.save
    assert_not duplicate_circle.valid?
  end

  test "password should be present(nonblank)"do
    @circle.password = @circle.password_confirmation = " " * 6
    assert_not @circle.valid?
  end

  test "password should have a minimum length" do
    @circle.password = @circle.password_confirmation = "a" * 5
    assert_not @circle.valid?
  end

  test "authenticated? should return false for a user with nil digest" do
    assert_not @circle.authenticated?('')
  end

end
