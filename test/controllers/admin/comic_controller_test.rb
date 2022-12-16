require "test_helper"

class Admin::ComicControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_comic_index_url
    assert_response :success
  end

  test "should get show" do
    get admin_comic_show_url
    assert_response :success
  end

  test "should get edit" do
    get admin_comic_edit_url
    assert_response :success
  end
end
