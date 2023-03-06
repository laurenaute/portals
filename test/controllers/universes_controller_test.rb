require "test_helper"

class UniversesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get universes_index_url
    assert_response :success
  end

  test "should get show" do
    get universes_show_url
    assert_response :success
  end
end
