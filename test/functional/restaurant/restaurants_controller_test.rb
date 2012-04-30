require 'test_helper'

class Restaurant::RestaurantsControllerTest < ActionController::TestCase
  setup do
    @restaurant_restaurant = restaurant_restaurants(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:restaurant_restaurants)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create restaurant_restaurant" do
    assert_difference('Restaurant::Restaurant.count') do
      post :create, restaurant_restaurant: @restaurant_restaurant.attributes
    end

    assert_redirected_to restaurant_restaurant_path(assigns(:restaurant_restaurant))
  end

  test "should show restaurant_restaurant" do
    get :show, id: @restaurant_restaurant.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @restaurant_restaurant.to_param
    assert_response :success
  end

  test "should update restaurant_restaurant" do
    put :update, id: @restaurant_restaurant.to_param, restaurant_restaurant: @restaurant_restaurant.attributes
    assert_redirected_to restaurant_restaurant_path(assigns(:restaurant_restaurant))
  end

  test "should destroy restaurant_restaurant" do
    assert_difference('Restaurant::Restaurant.count', -1) do
      delete :destroy, id: @restaurant_restaurant.to_param
    end

    assert_redirected_to restaurant_restaurants_path
  end
end
