require 'test_helper'

class DispatchersControllerTest < ActionController::TestCase
  setup do
    @dispatcher = dispatchers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dispatchers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dispatcher" do
    assert_difference('Dispatcher.count') do
      post :create, dispatcher: { name: @dispatcher.name }
    end

    assert_redirected_to dispatcher_path(assigns(:dispatcher))
  end

  test "should show dispatcher" do
    get :show, id: @dispatcher
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dispatcher
    assert_response :success
  end

  test "should update dispatcher" do
    patch :update, id: @dispatcher, dispatcher: { name: @dispatcher.name }
    assert_redirected_to dispatcher_path(assigns(:dispatcher))
  end

  test "should destroy dispatcher" do
    assert_difference('Dispatcher.count', -1) do
      delete :destroy, id: @dispatcher
    end

    assert_redirected_to dispatchers_path
  end
end
