require 'test_helper'

class IncidentfollowupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @incidentfollowup = incidentfollowups(:one)
  end

  test "should get index" do
    get incidentfollowups_url
    assert_response :success
  end

  test "should get new" do
    get new_incidentfollowup_url
    assert_response :success
  end

  test "should create incidentfollowup" do
    assert_difference('Incidentfollowup.count') do
      post incidentfollowups_url, params: { incidentfollowup: { comment: @incidentfollowup.comment, date: @incidentfollowup.date, incident: @incidentfollowup.incident, status: @incidentfollowup.status } }
    end

    assert_redirected_to incidentfollowup_url(Incidentfollowup.last)
  end

  test "should show incidentfollowup" do
    get incidentfollowup_url(@incidentfollowup)
    assert_response :success
  end

  test "should get edit" do
    get edit_incidentfollowup_url(@incidentfollowup)
    assert_response :success
  end

  test "should update incidentfollowup" do
    patch incidentfollowup_url(@incidentfollowup), params: { incidentfollowup: { comment: @incidentfollowup.comment, date: @incidentfollowup.date, incident: @incidentfollowup.incident, status: @incidentfollowup.status } }
    assert_redirected_to incidentfollowup_url(@incidentfollowup)
  end

  test "should destroy incidentfollowup" do
    assert_difference('Incidentfollowup.count', -1) do
      delete incidentfollowup_url(@incidentfollowup)
    end

    assert_redirected_to incidentfollowups_url
  end
end
