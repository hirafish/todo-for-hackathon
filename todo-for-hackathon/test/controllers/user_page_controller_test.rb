require "test_helper"

class UserPageControllerTest < ActionDispatch::IntegrationTest
  test "should get todo" do
    get user_page_todo_url
    assert_response :success
  end
end
