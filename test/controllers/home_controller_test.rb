require "test_helper"

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get calendar" do
    get home_calendar_url
    assert_response :success
  end
end
