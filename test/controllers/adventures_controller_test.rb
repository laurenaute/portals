require "test_helper"

class AdventuresControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get adventures_show_url
    assert_response :success
  end

  test "should get new" do
    get adventures_new_url
    assert_response :success
  end

  test "should get create" do
    get adventures_create_url
    assert_response :success
  end

  test "should get update" do
    get adventures_update_url
    assert_response :success
  end
end
