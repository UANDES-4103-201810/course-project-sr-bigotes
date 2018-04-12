require "application_system_test_case"

class PromisesTest < ApplicationSystemTestCase
  setup do
    @promise = promises(:one)
  end

  test "visiting the index" do
    visit promises_url
    assert_selector "h1", text: "Promises"
  end

  test "creating a Promise" do
    visit promises_url
    click_on "New Promise"

    fill_in "Amount", with: @promise.amount
    fill_in "Description", with: @promise.description
    fill_in "Id", with: @promise.id
    fill_in "Name", with: @promise.name
    click_on "Create Promise"

    assert_text "Promise was successfully created"
    click_on "Back"
  end

  test "updating a Promise" do
    visit promises_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @promise.amount
    fill_in "Description", with: @promise.description
    fill_in "Id", with: @promise.id
    fill_in "Name", with: @promise.name
    click_on "Update Promise"

    assert_text "Promise was successfully updated"
    click_on "Back"
  end

  test "destroying a Promise" do
    visit promises_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Promise was successfully destroyed"
  end
end
