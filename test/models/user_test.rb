require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def setup
    @user = User.new(name: "RAD", email: "rad2020rmit@gmail.com", mobile: 123456)
  end
  
  test "should be valid" do
    assert @user.valid?
  end
  
  test "name should be present" do
    @user.name = " "
    assert_not @user.valid?
  end
  
  test "email should be present" do
    @user.email = " "
    assert_not @user.valid?
  end
  
  test "mobile phone number should be present" do
    @user.mobile = " "
    assert_not @user.valid?
  end
  
  test "name should not be too long" do
    @user.name = "a" * 51
    assert_not @user.valid?
  end
  
  test "email should not be too long" do
    @user.email = "a" * 256 + "@gmail.com"
    assert_not @user.valid?
  end
  
  test "email validation should accept valid addresses" do
    valid_addresses = %w[rad2020rmit@gmail.com USER@foo.COM A_US-ER@foo.bar.org 
      			first.last@foo.jp alice+bob@baz.cn]
    valid_addresses.each do |valid_address|
      @user.email = valid_address
      assert @user.valid?, "#{valid_address.inspect} should be valid"
    end
  end
  
  test "email validation should accept valid addresses" do
    invalid_addresses = %w[rad2020rmit@gmail,com user_at@foo.org user.name@example.
    			foo@bar_baz.com foo@bar+baz.com]
    invalid_addresses.each do |invalid_address|
      @user.email = invalid_address
      assert_not @user.valid?, "#{invalid_address.inspect} should be invalid"
    end
  end
  
end
