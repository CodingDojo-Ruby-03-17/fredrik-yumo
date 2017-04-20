require 'test_helper'

class HelloControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get dojo" do
    get :dojo
    assert_response :success
  end

  test "should get say_hello" do
    get :say_hello
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get times" do
    get :times
    assert_response :success
  end

  test "should get restart" do
    get :restart
    assert_response :success
  end

end
