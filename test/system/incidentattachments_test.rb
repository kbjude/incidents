require "application_system_test_case"

class IncidentattachmentsTest < ApplicationSystemTestCase
  setup do
    @incidentattachment = incidentattachments(:one)
  end

  test "visiting the index" do
    visit incidentattachments_url
    assert_selector "h1", text: "Incidentattachments"
  end

  test "creating a Incidentattachment" do
    visit incidentattachments_url
    click_on "New Incidentattachment"

    fill_in "Filepath", with: @incidentattachment.filepath
    fill_in "Incident", with: @incidentattachment.incident
    fill_in "Name", with: @incidentattachment.name
    click_on "Create Incidentattachment"

    assert_text "Incidentattachment was successfully created"
    click_on "Back"
  end

  test "updating a Incidentattachment" do
    visit incidentattachments_url
    click_on "Edit", match: :first

    fill_in "Filepath", with: @incidentattachment.filepath
    fill_in "Incident", with: @incidentattachment.incident
    fill_in "Name", with: @incidentattachment.name
    click_on "Update Incidentattachment"

    assert_text "Incidentattachment was successfully updated"
    click_on "Back"
  end

  test "destroying a Incidentattachment" do
    visit incidentattachments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Incidentattachment was successfully destroyed"
  end
end
