require "test_helper"

class Api::V1::CheckWhetherControllerTest < ActionDispatch::IntegrationTest
  test "should get today_whether" do
    get api_v1_check_whether_today_whether_url
    assert_response :success
  end
end
