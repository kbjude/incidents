require "application_system_test_case"

class IncidenstatusesTest < ApplicationSystemTestCase
  setup do
    @incidenstatus = incidenstatuses(:one)
  end

  test "visiting the index" do
    visit incidenstatuses_url
    assert_selector "h1", text: "Incidenstatuses"
  end

  test "creating a Incidenstatus" do
    visit incidenstatuses_url
    click_on "New Incidenstatus"

    fill_in "Status", with: @incidenstatus.status
    click_on "Create Incidenstatus"

    assert_text "Incidenstatus was successfully created"
    click_on "Back"
  end

  test "updating a Incidenstatus" do
    visit incidenstatuses_url
    click_on "Edit", match: :first

    fill_in "Status", with: @incidenstatus.status
    click_on "Update Incidenstatus"

    assert_text "Incidenstatus was successfully updated"
    click_on "Back"
  end

  test "destroying a Incidenstatus" do
    visit incidenstatuses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Incidenstatus was successfully destroyed"
  end
end
