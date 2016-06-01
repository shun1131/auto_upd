require 'test_helper'

class RestaurantsControllerTest < ActionController::TestCase
  setup do
    @restaurant = restaurants(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:restaurants)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create restaurant" do
    assert_difference('Restaurant.count') do
      post :create, restaurant: { feature: @restaurant.feature, feature_contents: @restaurant.feature_contents, feature_flag: @restaurant.feature_flag, memo: @restaurant.memo, name: @restaurant.name, new_information: @restaurant.new_information, running: @restaurant.running, vacancy: @restaurant.vacancy, vacancy_state: @restaurant.vacancy_state }
    end

    assert_redirected_to restaurant_path(assigns(:restaurant))
  end

  test "should show restaurant" do
    get :show, id: @restaurant
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @restaurant
    assert_response :success
  end

  test "should update restaurant" do
    patch :update, id: @restaurant, restaurant: { feature: @restaurant.feature, feature_contents: @restaurant.feature_contents, feature_flag: @restaurant.feature_flag, memo: @restaurant.memo, name: @restaurant.name, new_information: @restaurant.new_information, running: @restaurant.running, vacancy: @restaurant.vacancy, vacancy_state: @restaurant.vacancy_state }
    assert_redirected_to restaurant_path(assigns(:restaurant))
  end

  test "should destroy restaurant" do
    assert_difference('Restaurant.count', -1) do
      delete :destroy, id: @restaurant
    end

    assert_redirected_to restaurants_path
  end
end
