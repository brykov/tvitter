require 'test_helper'

class TvitsControllerTest < ActionDispatch::IntegrationTest
  test "should get :create," do
    get tvits_:create,_url
    assert_response :success
  end

  test "should get :show" do
    get tvits_:show_url
    assert_response :success
  end

end
