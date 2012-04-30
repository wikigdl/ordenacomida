require 'test_helper'

class Restaurant::AdminsControllerTest < ActionController::TestCase
  setup do
    @restaurant_admin = restaurant_admins(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:restaurant_admins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create restaurant_admin" do
    assert_difference('Restaurant::Admin.count') do
      post :create, restaurant_admin: @restaurant_admin.attributes
    end

    assert_redirected_to restaurant_admin_path(assigns(:restaurant_admin))
  end

  test "should show restaurant_admin" do
    get :show, id: @restaurant_admin.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @restaurant_admin.to_param
    assert_response :success
  end

  test "should update restaurant_admin" do
    put :update, id: @restaurant_admin.to_param, restaurant_admin: @restaurant_admin.attributes
    assert_redirected_to restaurant_admin_path(assigns(:restaurant_admin))
  end

  test "should destroy restaurant_admin" do
    assert_difference('Restaurant::Admin.count', -1) do
      delete :destroy, id: @restaurant_admin.to_param
    end

    assert_redirected_to restaurant_admins_path
  end
end
