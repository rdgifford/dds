require 'test_helper'

class NavigatorsControllerTest < ActionController::TestCase
  setup do
    @navigator = navigators(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:navigators)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create navigator" do
    assert_difference('Navigator.count') do
      post :create, navigator: { completion: @navigator.completion }
    end

    assert_redirected_to navigator_path(assigns(:navigator))
  end

  test "should show navigator" do
    get :show, id: @navigator
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @navigator
    assert_response :success
  end

  test "should update navigator" do
    patch :update, id: @navigator, navigator: { completion: @navigator.completion }
    assert_redirected_to navigator_path(assigns(:navigator))
  end

  test "should destroy navigator" do
    assert_difference('Navigator.count', -1) do
      delete :destroy, id: @navigator
    end

    assert_redirected_to navigators_path
  end
end
