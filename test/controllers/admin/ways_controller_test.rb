require 'test_helper'

class Admin::WaysControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_ways_index_url
    assert_response :success
  end

end
