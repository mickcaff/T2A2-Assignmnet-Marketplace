require "test_helper"

class Provider::ServicesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get provider_services_new_url
    assert_response :success
  end

  test "should get edit" do
    get provider_services_edit_url
    assert_response :success
  end

  test "should get index" do
    get provider_services_index_url
    assert_response :success
  end

  test "should get show" do
    get provider_services_show_url
    assert_response :success
  end
end
