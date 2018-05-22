require 'test_helper'

class DrontestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @drontest = drontests(:one)
  end

  test "should get index" do
    get drontests_url
    assert_response :success
  end

  test "should get new" do
    get new_drontest_url
    assert_response :success
  end

  test "should create drontest" do
    assert_difference('Drontest.count') do
      post drontests_url, params: { drontest: { address: @drontest.address, appointment: @drontest.appointment, name: @drontest.name, phone: @drontest.phone } }
    end

    assert_redirected_to drontest_url(Drontest.last)
  end

  test "should show drontest" do
    get drontest_url(@drontest)
    assert_response :success
  end

  test "should get edit" do
    get edit_drontest_url(@drontest)
    assert_response :success
  end

  test "should update drontest" do
    patch drontest_url(@drontest), params: { drontest: { address: @drontest.address, appointment: @drontest.appointment, name: @drontest.name, phone: @drontest.phone } }
    assert_redirected_to drontest_url(@drontest)
  end

  test "should destroy drontest" do
    assert_difference('Drontest.count', -1) do
      delete drontest_url(@drontest)
    end

    assert_redirected_to drontests_url
  end
end
