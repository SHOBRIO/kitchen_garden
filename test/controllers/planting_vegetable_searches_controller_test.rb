require "test_helper"

class PlantingVegetableSearchesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get planting_vegetable_searches_show_url
    assert_response :success
  end

  test "should get new" do
    get planting_vegetable_searches_new_url
    assert_response :success
  end
end
