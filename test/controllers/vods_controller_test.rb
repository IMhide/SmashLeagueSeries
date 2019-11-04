require 'test_helper'

class VodsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get vods_index_url
    assert_response :success
  end

  test "should get show" do
    get vods_show_url
    assert_response :success
  end

end
