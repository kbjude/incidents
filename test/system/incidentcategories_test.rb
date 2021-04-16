require "application_system_test_case"

class IncidentcategoriesTest < ApplicationSystemTestCase
  setup do
    @incidentcategory = incidentcategories(:one)
  end

  test "visiting the index" do
    visit incidentcategories_url
    assert_selector "h1", text: "Incidentcategories"
  end

  test "creating a Incidentcategory" do
    visit incidentcategories_url
    click_on "New Incidentcategory"

    fill_in "Name", with: @incidentcategory.name
    click_on "Create Incidentcategory"

    assert_text "Incidentcategory was successfully created"
    click_on "Back"
  end

  test "updating a Incidentcategory" do
    visit incidentcategories_url
    click_on "Edit", match: :first

    fill_in "Name", with: @incidentcategory.name
    click_on "Update Incidentcategory"

    assert_text "Incidentcategory was successfully updated"
    click_on "Back"
  end

  test "destroying a Incidentcategory" do
    visit incidentcategories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Incidentcategory was successfully destroyed"
  end
end
