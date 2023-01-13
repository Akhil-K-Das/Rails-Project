require "test_helper"

class BookticketsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get booktickets_index_url
    assert_response :success
  end

  test "should get create" do
    get booktickets_create_url
    assert_response :success
  end

  test "should get new" do
    get booktickets_new_url
    assert_response :success
  end

  test "should get show" do
    get booktickets_show_url
    assert_response :success
  end
end
