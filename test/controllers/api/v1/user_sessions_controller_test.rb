require "test_helper"

class Api::V1::UserSessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get api_v1_user_sessions_new_url
    assert_response :success
  end

  test "should get create" do
    get api_v1_user_sessions_create_url
    assert_response :success
  end

  test "should get destory" do
    get api_v1_user_sessions_destory_url
    assert_response :success
  end
end
