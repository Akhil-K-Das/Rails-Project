require "test_helper"

class SearchresultsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get searchresults_index_url
    assert_response :success
  end

  test "should get new" do
    get searchresults_new_url
    assert_response :success
  end

  test "should get show" do
    get searchresults_show_url
    assert_response :success
  end

  test "should get create" do
    get searchresults_create_url
    assert_response :success
  end

  test "should get destroy" do
    get searchresults_destroy_url
    assert_response :success
  end
end
