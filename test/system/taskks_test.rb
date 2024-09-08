require "application_system_test_case"

class TaskksTest < ApplicationSystemTestCase
  setup do
    @taskk = taskks(:one)
  end

  test "visiting the index" do
    visit taskks_url
    assert_selector "h1", text: "Taskks"
  end

  test "should create taskk" do
    visit taskks_url
    click_on "New taskk"

    fill_in "Status", with: @taskk.status
    click_on "Create Taskk"

    assert_text "Taskk was successfully created"
    click_on "Back"
  end

  test "should update Taskk" do
    visit taskk_url(@taskk)
    click_on "Edit this taskk", match: :first

    fill_in "Status", with: @taskk.status
    click_on "Update Taskk"

    assert_text "Taskk was successfully updated"
    click_on "Back"
  end

  test "should destroy Taskk" do
    visit taskk_url(@taskk)
    click_on "Destroy this taskk", match: :first

    assert_text "Taskk was successfully destroyed"
  end
end
