require 'test_helper'

class Laba9ControllerTest < ActionDispatch::IntegrationTest
  test "should get input" do
    get laba9_input_url
    assert_response :success
  end

  test "should get view" do
    get laba9_view_url
    assert_response :success
  end

end
