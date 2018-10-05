require "application_system_test_case"

class Admin::RegionsTest < ApplicationSystemTestCase
  setup do
    @admin_region = admin_regions(:one)
  end

  test "visiting the index" do
    visit admin_regions_url
    assert_selector "h1", text: "Admin/Regions"
  end

  test "creating a Region" do
    visit admin_regions_url
    click_on "New Admin/Region"

    fill_in "Region Name", with: @admin_region.region_name
    click_on "Create Region"

    assert_text "Region was successfully created"
    click_on "Back"
  end

  test "updating a Region" do
    visit admin_regions_url
    click_on "Edit", match: :first

    fill_in "Region Name", with: @admin_region.region_name
    click_on "Update Region"

    assert_text "Region was successfully updated"
    click_on "Back"
  end

  test "destroying a Region" do
    visit admin_regions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Region was successfully destroyed"
  end
end
