require 'test_helper'

class StatesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get states_index_url
    assert_response :success
  end

  test "should get create" do
    get states_create_url
    assert_response :success
  end

end
