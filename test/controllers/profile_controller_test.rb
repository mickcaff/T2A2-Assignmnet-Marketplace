require "test_helper"

class ProfileControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get profile_edit_url
    assert_response :success
  end
end
