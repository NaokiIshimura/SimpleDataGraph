require 'test_helper'

class ReceiveDataControllerTest < ActionDispatch::IntegrationTest
  test "should get post" do
    get receive_data_post_url
    assert_response :success
  end

end
