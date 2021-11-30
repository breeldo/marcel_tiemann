require "application_system_test_case"

class InjuriesTest < ApplicationSystemTestCase
  setup do
    @injury = injuries(:one)
  end

  test "visiting the index" do
    visit injuries_url
    assert_selector "h1", text: "Injuries"
  end

  test "creating a Injury" do
    visit injuries_url
    click_on "New Injury"

    fill_in "Body part", with: @injury.body_part
    click_on "Create Injury"

    assert_text "Injury was successfully created"
    click_on "Back"
  end

  test "updating a Injury" do
    visit injuries_url
    click_on "Edit", match: :first

    fill_in "Body part", with: @injury.body_part
    click_on "Update Injury"

    assert_text "Injury was successfully updated"
    click_on "Back"
  end

  test "destroying a Injury" do
    visit injuries_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Injury was successfully destroyed"
  end
end
