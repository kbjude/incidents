require "application_system_test_case"

class OffendercategoriesTest < ApplicationSystemTestCase
  setup do
    @offendercategory = offendercategories(:one)
  end

  test "visiting the index" do
    visit offendercategories_url
    assert_selector "h1", text: "Offendercategories"
  end

  test "creating a Offendercategory" do
    visit offendercategories_url
    click_on "New Offendercategory"

    fill_in "Name", with: @offendercategory.name
    click_on "Create Offendercategory"

    assert_text "Offendercategory was successfully created"
    click_on "Back"
  end

  test "updating a Offendercategory" do
    visit offendercategories_url
    click_on "Edit", match: :first

    fill_in "Name", with: @offendercategory.name
    click_on "Update Offendercategory"

    assert_text "Offendercategory was successfully updated"
    click_on "Back"
  end

  test "destroying a Offendercategory" do
    visit offendercategories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Offendercategory was successfully destroyed"
  end
end
