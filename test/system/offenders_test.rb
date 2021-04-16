require "application_system_test_case"

class OffendersTest < ApplicationSystemTestCase
  setup do
    @offender = offenders(:one)
  end

  test "visiting the index" do
    visit offenders_url
    assert_selector "h1", text: "Offenders"
  end

  test "creating a Offender" do
    visit offenders_url
    click_on "New Offender"

    fill_in "Address", with: @offender.address
    fill_in "Comment", with: @offender.comment
    fill_in "Contact", with: @offender.contact
    fill_in "Incident", with: @offender.incident_id
    fill_in "Name", with: @offender.name
    fill_in "Offendercategory", with: @offender.offendercategory_id
    click_on "Create Offender"

    assert_text "Offender was successfully created"
    click_on "Back"
  end

  test "updating a Offender" do
    visit offenders_url
    click_on "Edit", match: :first

    fill_in "Address", with: @offender.address
    fill_in "Comment", with: @offender.comment
    fill_in "Contact", with: @offender.contact
    fill_in "Incident", with: @offender.incident_id
    fill_in "Name", with: @offender.name
    fill_in "Offendercategory", with: @offender.offendercategory_id
    click_on "Update Offender"

    assert_text "Offender was successfully updated"
    click_on "Back"
  end

  test "destroying a Offender" do
    visit offenders_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Offender was successfully destroyed"
  end
end
