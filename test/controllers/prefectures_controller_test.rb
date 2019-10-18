require 'test_helper'

class PrefecturesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get prefectures_new_url
    assert_response :success
  end

  test "should get create" do
    get prefectures_create_url
    assert_response :success
  end

end
