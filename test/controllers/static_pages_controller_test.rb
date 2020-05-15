require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get forum" do
    get static_pages_forum_url
    assert_response :success
  end

end
