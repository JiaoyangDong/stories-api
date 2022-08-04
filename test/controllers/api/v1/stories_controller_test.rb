require "test_helper"

class Api::V1::StoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_v1_stories_index_url
    assert_response :success
  end

  test "should get create" do
    get api_v1_stories_create_url
    assert_response :success
  end

  test "should get show" do
    get api_v1_stories_show_url
    assert_response :success
  end

  test "should get update" do
    get api_v1_stories_update_url
    assert_response :success
  end

  test "should get destroy" do
    get api_v1_stories_destroy_url
    assert_response :success
  end
end
