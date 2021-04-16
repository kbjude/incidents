require 'test_helper'

class IncidentattachmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @incidentattachment = incidentattachments(:one)
  end

  test "should get index" do
    get incidentattachments_url
    assert_response :success
  end

  test "should get new" do
    get new_incidentattachment_url
    assert_response :success
  end

  test "should create incidentattachment" do
    assert_difference('Incidentattachment.count') do
      post incidentattachments_url, params: { incidentattachment: { filepath: @incidentattachment.filepath, incident: @incidentattachment.incident, name: @incidentattachment.name } }
    end

    assert_redirected_to incidentattachment_url(Incidentattachment.last)
  end

  test "should show incidentattachment" do
    get incidentattachment_url(@incidentattachment)
    assert_response :success
  end

  test "should get edit" do
    get edit_incidentattachment_url(@incidentattachment)
    assert_response :success
  end

  test "should update incidentattachment" do
    patch incidentattachment_url(@incidentattachment), params: { incidentattachment: { filepath: @incidentattachment.filepath, incident: @incidentattachment.incident, name: @incidentattachment.name } }
    assert_redirected_to incidentattachment_url(@incidentattachment)
  end

  test "should destroy incidentattachment" do
    assert_difference('Incidentattachment.count', -1) do
      delete incidentattachment_url(@incidentattachment)
    end

    assert_redirected_to incidentattachments_url
  end
end
