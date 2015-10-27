require 'test_helper'

class TodoItem1sControllerTest < ActionController::TestCase
  setup do
    @todo_item1 = todo_item1s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:todo_item1s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create todo_item1" do
    assert_difference('TodoItem1.count') do
      post :create, todo_item1: { description: @todo_item1.description }
    end

    assert_redirected_to todo_item1_path(assigns(:todo_item1))
  end

  test "should show todo_item1" do
    get :show, id: @todo_item1
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @todo_item1
    assert_response :success
  end

  test "should update todo_item1" do
    patch :update, id: @todo_item1, todo_item1: { description: @todo_item1.description }
    assert_redirected_to todo_item1_path(assigns(:todo_item1))
  end

  test "should destroy todo_item1" do
    assert_difference('TodoItem1.count', -1) do
      delete :destroy, id: @todo_item1
    end

    assert_redirected_to todo_item1s_path
  end
end
