require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  
  def setup
    @user = users(:michael)
  end
  
  test "should get new" do
    get signup_path
    assert_response :success
  end
=begin
  test "should redirect index when not logged in" do
    get users_path
    assert_redirected_to login_url
  end
=end
end
