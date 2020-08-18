require "application_system_test_case"

class TimeSlicesTest < ApplicationSystemTestCase
  setup do
    @time_slice = time_slices(:one)
  end

  test "visiting the index" do
    visit time_slices_url
    assert_selector "h1", text: "Time Slices"
  end

  test "creating a Time slice" do
    visit time_slices_url
    click_on "New Time Slice"

    fill_in "Down", with: @time_slice.down
    fill_in "Up", with: @time_slice.up
    click_on "Create Time slice"

    assert_text "Time slice was successfully created"
    click_on "Back"
  end

  test "updating a Time slice" do
    visit time_slices_url
    click_on "Edit", match: :first

    fill_in "Down", with: @time_slice.down
    fill_in "Up", with: @time_slice.up
    click_on "Update Time slice"

    assert_text "Time slice was successfully updated"
    click_on "Back"
  end

  test "destroying a Time slice" do
    visit time_slices_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Time slice was successfully destroyed"
  end
end
