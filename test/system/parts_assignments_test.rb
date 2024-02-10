require "application_system_test_case"

class PartsAssignmentsTest < ApplicationSystemTestCase
  setup do
    @parts_assignment = parts_assignments(:one)
  end

  test "visiting the index" do
    visit parts_assignments_url
    assert_selector "h1", text: "Parts assignments"
  end

  test "should create parts assignment" do
    visit parts_assignments_url
    click_on "New parts assignment"

    fill_in "Part", with: @parts_assignment.part_id
    fill_in "Project", with: @parts_assignment.project_id
    click_on "Create Parts assignment"

    assert_text "Parts assignment was successfully created"
    click_on "Back"
  end

  test "should update Parts assignment" do
    visit parts_assignment_url(@parts_assignment)
    click_on "Edit this parts assignment", match: :first

    fill_in "Part", with: @parts_assignment.part_id
    fill_in "Project", with: @parts_assignment.project_id
    click_on "Update Parts assignment"

    assert_text "Parts assignment was successfully updated"
    click_on "Back"
  end

  test "should destroy Parts assignment" do
    visit parts_assignment_url(@parts_assignment)
    click_on "Destroy this parts assignment", match: :first

    assert_text "Parts assignment was successfully destroyed"
  end
end
