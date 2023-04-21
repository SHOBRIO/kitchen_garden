require "test_helper"

class Mypage::KitchenGardensControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get mypage_kitchen_gardens_show_url
    assert_response :success
  end
end
