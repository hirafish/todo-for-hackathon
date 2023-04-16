require "test_helper"

class ToodoosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get toodoos_index_url
    assert_response :success
  end
end
