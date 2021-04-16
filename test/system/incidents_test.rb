require "application_system_test_case"

class IncidentsTest < ApplicationSystemTestCase
  setup do
    @incident = incidents(:one)
  end

  test "visiting the index" do
    visit incidents_url
    assert_selector "h1", text: "Incidents"
  end

  test "creating a Incident" do
    visit incidents_url
    click_on "New Incident"

    fill_in "Address", with: @incident.address
    fill_in "Date time", with: @incident.date_time
    fill_in "Description", with: @incident.description
    fill_in "Incidentcategory", with: @incident.incidentcategory
    fill_in "Latitude", with: @incident.latitude
    fill_in "Longtitude", with: @incident.longtitude
    fill_in "Offender", with: @incident.offender
    fill_in "Status", with: @incident.status
    click_on "Create Incident"

    assert_text "Incident was successfully created"
    click_on "Back"
  end

  test "updating a Incident" do
    visit incidents_url
    click_on "Edit", match: :first

    fill_in "Address", with: @incident.address
    fill_in "Date time", with: @incident.date_time
    fill_in "Description", with: @incident.description
    fill_in "Incidentcategory", with: @incident.incidentcategory
    fill_in "Latitude", with: @incident.latitude
    fill_in "Longtitude", with: @incident.longtitude
    fill_in "Offender", with: @incident.offender
    fill_in "Status", with: @incident.status
    click_on "Update Incident"

    assert_text "Incident was successfully updated"
    click_on "Back"
  end

  test "destroying a Incident" do
    visit incidents_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Incident was successfully destroyed"
  end
end
