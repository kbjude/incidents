require 'test_helper'

class IncidentstatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @incidentstatus = incidentstatuses(:one)
  end

  test "should get index" do
    get incidentstatuses_url
    assert_response :success
  end

  test "should get new" do
    get new_incidentstatus_url
    assert_response :success
  end

  test "should create incidentstatus" do
    assert_difference('Incidentstatus.count') do
      post incidentstatuses_url, params: { incidentstatus: { incident_id: @incidentstatus.incident_id, status: @incidentstatus.status } }
    end

    assert_redirected_to incidentstatus_url(Incidentstatus.last)
  end

  test "should show incidentstatus" do
    get incidentstatus_url(@incidentstatus)
    assert_response :success
  end

  test "should get edit" do
    get edit_incidentstatus_url(@incidentstatus)
    assert_response :success
  end

  test "should update incidentstatus" do
    patch incidentstatus_url(@incidentstatus), params: { incidentstatus: { incident_id: @incidentstatus.incident_id, status: @incidentstatus.status } }
    assert_redirected_to incidentstatus_url(@incidentstatus)
  end

  test "should destroy incidentstatus" do
    assert_difference('Incidentstatus.count', -1) do
      delete incidentstatus_url(@incidentstatus)
    end

    assert_redirected_to incidentstatuses_url
  end
end
