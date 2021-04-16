require "application_system_test_case"

class IncidentstatusesTest < ApplicationSystemTestCase
  setup do
    @incidentstatus = incidentstatuses(:one)
  end

  test "visiting the index" do
    visit incidentstatuses_url
    assert_selector "h1", text: "Incidentstatuses"
  end

  test "creating a Incidentstatus" do
    visit incidentstatuses_url
    click_on "New Incidentstatus"

    fill_in "Incident", with: @incidentstatus.incident_id
    fill_in "Status", with: @incidentstatus.status
    click_on "Create Incidentstatus"

    assert_text "Incidentstatus was successfully created"
    click_on "Back"
  end

  test "updating a Incidentstatus" do
    visit incidentstatuses_url
    click_on "Edit", match: :first

    fill_in "Incident", with: @incidentstatus.incident_id
    fill_in "Status", with: @incidentstatus.status
    click_on "Update Incidentstatus"

    assert_text "Incidentstatus was successfully updated"
    click_on "Back"
  end

  test "destroying a Incidentstatus" do
    visit incidentstatuses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Incidentstatus was successfully destroyed"
  end
end
