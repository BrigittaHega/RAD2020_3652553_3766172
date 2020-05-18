require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get forum" do
    get root_path
    assert_response :success
    assert_select "title", "Forum"
  end

end
