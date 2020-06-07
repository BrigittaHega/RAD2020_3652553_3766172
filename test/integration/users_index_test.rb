require 'test_helper'

class UsersIndexTest < ActionDispatch::IntegrationTest
  def setup
    @user = users(:michael)
  end

  test "index" do
  #log_in_as(@user) #Not used because a part of Chap 9
  get users_path
  assert_template 'users/index'
  end
end
