require "application_system_test_case"

class GrantsTest < ApplicationSystemTestCase
  setup do
    @grant = grants(:one)
  end

  test "visiting the index" do
    visit grants_url
    assert_selector "h1", text: "Grants"
  end

  test "should create grant" do
    visit grants_url
    click_on "New grant"

    fill_in "Right", with: @grant.right_id
    fill_in "Role", with: @grant.role_id
    click_on "Create Grant"

    assert_text "Grant was successfully created"
    click_on "Back"
  end

  test "should update Grant" do
    visit grant_url(@grant)
    click_on "Edit this grant", match: :first

    fill_in "Right", with: @grant.right_id
    fill_in "Role", with: @grant.role_id
    click_on "Update Grant"

    assert_text "Grant was successfully updated"
    click_on "Back"
  end

  test "should destroy Grant" do
    visit grant_url(@grant)
    click_on "Destroy this grant", match: :first

    assert_text "Grant was successfully destroyed"
  end
end
