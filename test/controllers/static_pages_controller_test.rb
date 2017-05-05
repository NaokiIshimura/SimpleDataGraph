require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get about" do
    get static_pages_about_url
    assert_response :success
  end

  test "should get how_to_use" do
    get static_pages_how_to_use_url
    assert_response :success
  end

end
