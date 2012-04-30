require 'test_helper'

class Customer::UsersControllerTest < ActionController::TestCase
  setup do
    @customer_user = customer_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:customer_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create customer_user" do
    assert_difference('Customer::User.count') do
      post :create, customer_user: @customer_user.attributes
    end

    assert_redirected_to customer_user_path(assigns(:customer_user))
  end

  test "should show customer_user" do
    get :show, id: @customer_user.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @customer_user.to_param
    assert_response :success
  end

  test "should update customer_user" do
    put :update, id: @customer_user.to_param, customer_user: @customer_user.attributes
    assert_redirected_to customer_user_path(assigns(:customer_user))
  end

  test "should destroy customer_user" do
    assert_difference('Customer::User.count', -1) do
      delete :destroy, id: @customer_user.to_param
    end

    assert_redirected_to customer_users_path
  end
end
