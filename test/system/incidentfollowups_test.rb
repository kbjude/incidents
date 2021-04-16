require "application_system_test_case"

class IncidentfollowupsTest < ApplicationSystemTestCase
  setup do
    @incidentfollowup = incidentfollowups(:one)
  end

  test "visiting the index" do
    visit incidentfollowups_url
    assert_selector "h1", text: "Incidentfollowups"
  end

  test "creating a Incidentfollowup" do
    visit incidentfollowups_url
    click_on "New Incidentfollowup"

    fill_in "Comment", with: @incidentfollowup.comment
    fill_in "Date", with: @incidentfollowup.date
    fill_in "Incident", with: @incidentfollowup.incident
    fill_in "Status", with: @incidentfollowup.status
    click_on "Create Incidentfollowup"

    assert_text "Incidentfollowup was successfully created"
    click_on "Back"
  end

  test "updating a Incidentfollowup" do
    visit incidentfollowups_url
    click_on "Edit", match: :first

    fill_in "Comment", with: @incidentfollowup.comment
    fill_in "Date", with: @incidentfollowup.date
    fill_in "Incident", with: @incidentfollowup.incident
    fill_in "Status", with: @incidentfollowup.status
    click_on "Update Incidentfollowup"

    assert_text "Incidentfollowup was successfully updated"
    click_on "Back"
  end

  test "destroying a Incidentfollowup" do
    visit incidentfollowups_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Incidentfollowup was successfully destroyed"
  end
end
