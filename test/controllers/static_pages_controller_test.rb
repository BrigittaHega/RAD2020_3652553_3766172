require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get forum" do
    
    get root_path#--routes.rb--line 6 has been changed into this, Listing 5.28
    # get static_pages_home_url
    assert_response :success
    assert_select "title", "Home | News+"
  end

# need to change the following tutorial files into assignment files
  # test "should get help" do
  #   get help_path#--routes.rb--line below has been changed into this, Listing 5.28
  #   # get static_pages_help_url
  #   assert_response :success
  #   assert_select "title", "Help | News+"
  # end

  # test "should get about" do
  #   get about_path#--routes.rb--line below has been changed into this, Listing 5.28
  #   # get static_pages_about_url
  #   assert_response :success
  #   assert_select "title", "About | News+"
  # end

  # test "should get contact" do
  #   get contact_path#--routes.rb--line below has been changed into this, Listing 5.28
  #   # get static_pages_contact_url
  #   assert_response :success
  #   assert_select "title", "Contact | News+"
  #   end

end
