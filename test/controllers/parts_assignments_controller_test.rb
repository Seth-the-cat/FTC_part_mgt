require "test_helper"

class PartsAssignmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @parts_assignment = parts_assignments(:one)
  end

  test "should get index" do
    get parts_assignments_url
    assert_response :success
  end

  test "should get new" do
    get new_parts_assignment_url
    assert_response :success
  end

  test "should create parts_assignment" do
    assert_difference("PartsAssignment.count") do
      post parts_assignments_url, params: { parts_assignment: { part_id: @parts_assignment.part_id, project_id: @parts_assignment.project_id } }
    end

    assert_redirected_to parts_assignment_url(PartsAssignment.last)
  end

  test "should show parts_assignment" do
    get parts_assignment_url(@parts_assignment)
    assert_response :success
  end

  test "should get edit" do
    get edit_parts_assignment_url(@parts_assignment)
    assert_response :success
  end

  test "should update parts_assignment" do
    patch parts_assignment_url(@parts_assignment), params: { parts_assignment: { part_id: @parts_assignment.part_id, project_id: @parts_assignment.project_id } }
    assert_redirected_to parts_assignment_url(@parts_assignment)
  end

  test "should destroy parts_assignment" do
    assert_difference("PartsAssignment.count", -1) do
      delete parts_assignment_url(@parts_assignment)
    end

    assert_redirected_to parts_assignments_url
  end
end
