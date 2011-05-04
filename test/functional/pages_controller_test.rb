require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get main" do
    get :main
    assert_response :success
  end

  test "should get add" do
    get :add
    assert_response :success
  end

  test "should get register" do
    get :register
    assert_response :success
  end

  test "should get top" do
    get :top
    assert_response :success
  end

  test "should get random" do
    get :random
    assert_response :success
  end

  test "should get stats" do
    get :stats
    assert_response :success
  end

end
