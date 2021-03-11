require "test_helper"

class VillagersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get villagers_index_url
    assert_response :success
  end

  test "should get show" do
    get villagers_show_url
    assert_response :success
  end
end
