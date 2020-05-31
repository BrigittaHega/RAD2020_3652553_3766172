require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  # assignment
  test "should get forum" do
    get root_path
    assert_response :success
    assert_select "title", "Forum | #{@base_title}"
  end

  test "should get news" do
    get static_pages_news_url
    assert_response :success
    assert_select "title", "News | #{@base_title}"
  end

  # following listing 3.42:
  def setup
  @base_title = "News+"
  end

  test "should get home" do
    get static_pages_home_url
    assert_response :success
    assert_select "title", "Home | #{@base_title}"
    
  endNews

  test "should get help" do
    get static_pages_help_url
    assert_response :success
    assert_select "title", "Help | #{@base_title}"
  end

  test "should get root" do
    get FILL_IN
    assert_response FILL_IN
  end

  
end
