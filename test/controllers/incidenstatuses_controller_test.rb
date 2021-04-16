require 'test_helper'

class IncidenstatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @incidenstatus = incidenstatuses(:one)
  end

  test "should get index" do
    get incidenstatuses_url
    assert_response :success
  end

  test "should get new" do
    get new_incidenstatus_url
    assert_response :success
  end

  test "should create incidenstatus" do
    assert_difference('Incidenstatus.count') do
      post incidenstatuses_url, params: { incidenstatus: { status: @incidenstatus.status } }
    end

    assert_redirected_to incidenstatus_url(Incidenstatus.last)
  end

  test "should show incidenstatus" do
    get incidenstatus_url(@incidenstatus)
    assert_response :success
  end

  test "should get edit" do
    get edit_incidenstatus_url(@incidenstatus)
    assert_response :success
  end

  test "should update incidenstatus" do
    patch incidenstatus_url(@incidenstatus), params: { incidenstatus: { status: @incidenstatus.status } }
    assert_redirected_to incidenstatus_url(@incidenstatus)
  end

  test "should destroy incidenstatus" do
    assert_difference('Incidenstatus.count', -1) do
      delete incidenstatus_url(@incidenstatus)
    end

    assert_redirected_to incidenstatuses_url
  end
end
