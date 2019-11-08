require 'test_helper'

class Dummy01ControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dummy01_index_url
    assert_response :success
  end

end
