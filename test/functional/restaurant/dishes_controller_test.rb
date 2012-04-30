require 'test_helper'

class Restaurant::DishesControllerTest < ActionController::TestCase
  setup do
    @restaurant_dish = restaurant_dishes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:restaurant_dishes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create restaurant_dish" do
    assert_difference('Restaurant::Dish.count') do
      post :create, restaurant_dish: @restaurant_dish.attributes
    end

    assert_redirected_to restaurant_dish_path(assigns(:restaurant_dish))
  end

  test "should show restaurant_dish" do
    get :show, id: @restaurant_dish.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @restaurant_dish.to_param
    assert_response :success
  end

  test "should update restaurant_dish" do
    put :update, id: @restaurant_dish.to_param, restaurant_dish: @restaurant_dish.attributes
    assert_redirected_to restaurant_dish_path(assigns(:restaurant_dish))
  end

  test "should destroy restaurant_dish" do
    assert_difference('Restaurant::Dish.count', -1) do
      delete :destroy, id: @restaurant_dish.to_param
    end

    assert_redirected_to restaurant_dishes_path
  end
end
