require 'test_helper'

class StationLocationsControllerTest < ActionController::TestCase
  setup do
    @station_location = station_locations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:station_locations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create station_location" do
    assert_difference('StationLocation.count') do
      post :create, station_location: { address1: @station_location.address1, address2: @station_location.address2, city: @station_location.city, gmaps: @station_location.gmaps, latitude: @station_location.latitude, longitude: @station_location.longitude, name: @station_location.name, state: @station_location.state, zip: @station_location.zip }
    end

    assert_redirected_to station_location_path(assigns(:station_location))
  end

  test "should show station_location" do
    get :show, id: @station_location
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @station_location
    assert_response :success
  end

  test "should update station_location" do
    patch :update, id: @station_location, station_location: { address1: @station_location.address1, address2: @station_location.address2, city: @station_location.city, gmaps: @station_location.gmaps, latitude: @station_location.latitude, longitude: @station_location.longitude, name: @station_location.name, state: @station_location.state, zip: @station_location.zip }
    assert_redirected_to station_location_path(assigns(:station_location))
  end

  test "should destroy station_location" do
    assert_difference('StationLocation.count', -1) do
      delete :destroy, id: @station_location
    end

    assert_redirected_to station_locations_path
  end
end
