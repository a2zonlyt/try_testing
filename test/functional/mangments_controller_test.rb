require 'test_helper'

class MangmentsControllerTest < ActionController::TestCase
  setup do
    @mangment = mangments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mangments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mangment" do
    assert_difference('Mangment.count') do
      post :create, mangment: { age: @mangment.age, description: @mangment.description, name: @mangment.name }
    end

    assert_redirected_to mangment_path(assigns(:mangment))
  end

  test "should show mangment" do
    get :show, id: @mangment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mangment
    assert_response :success
  end

  test "should update mangment" do
    put :update, id: @mangment, mangment: { age: @mangment.age, description: @mangment.description, name: @mangment.name }
    assert_redirected_to mangment_path(assigns(:mangment))
  end

  test "should destroy mangment" do
    assert_difference('Mangment.count', -1) do
      delete :destroy, id: @mangment
    end

    assert_redirected_to mangments_path
  end
end
