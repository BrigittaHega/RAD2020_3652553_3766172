require 'test_helper'

class UsersIndexTest < ActionDispatch::IntegrationTest
begin
  def setup
    @user = users(:michael)
  end

  test "index" do # including pagination" do
  #log_in_as(@user) #Not used because a part of Chap 9
    get users_path
    assert_template 'users/index'
    #assert_select 'div.pagination'
    #User.paginate(page: 1).each do |user|
      #assert_select 'a[href=?]', user_path(user), text: user.name
    end
  end
end
