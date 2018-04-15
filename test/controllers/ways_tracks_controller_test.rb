require 'test_helper'

class WaysTracksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ways_tracks_index_url
    assert_response :success
  end

  test "should get show" do
    get ways_tracks_show_url
    assert_response :success
  end

end
