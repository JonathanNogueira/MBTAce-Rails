require 'test_helper'

class GtfsAgencyControllerTest < ActionController::TestCase
  test "should get agency_id:string" do
    get :agency_id:string
    assert_response :success
  end

  test "should get agency_name:string" do
    get :agency_name:string
    assert_response :success
  end

  test "should get agency_url:string" do
    get :agency_url:string
    assert_response :success
  end

  test "should get agency_timezone:string" do
    get :agency_timezone:string
    assert_response :success
  end

  test "should get agency_lang:string" do
    get :agency_lang:string
    assert_response :success
  end

  test "should get agency_phone:string" do
    get :agency_phone:string
    assert_response :success
  end

  test "should get agency_fare_url:string" do
    get :agency_fare_url:string
    assert_response :success
  end

end
