require "application_system_test_case"

class LsitsTest < ApplicationSystemTestCase
  setup do
    @lsit = lsits(:one)
  end

  test "visiting the index" do
    visit lsits_url
    assert_selector "h1", text: "Lsits"
  end

  test "should create lsit" do
    visit lsits_url
    click_on "New lsit"

    check "Completed" if @lsit.completed
    fill_in "Description", with: @lsit.description
    click_on "Create Lsit"

    assert_text "Lsit was successfully created"
    click_on "Back"
  end

  test "should update Lsit" do
    visit lsit_url(@lsit)
    click_on "Edit this lsit", match: :first

    check "Completed" if @lsit.completed
    fill_in "Description", with: @lsit.description
    click_on "Update Lsit"

    assert_text "Lsit was successfully updated"
    click_on "Back"
  end

  test "should destroy Lsit" do
    visit lsit_url(@lsit)
    click_on "Destroy this lsit", match: :first

    assert_text "Lsit was successfully destroyed"
  end
end
