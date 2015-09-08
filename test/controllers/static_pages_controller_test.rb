require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase

  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get policies" do
    get :policies
    assert_response :success
  end

  test "should get faq" do
    get :faq
    assert_response :success
  end
end
