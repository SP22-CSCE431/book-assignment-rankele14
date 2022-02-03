require "application_system_test_case"

class AppXesTest < ApplicationSystemTestCase
  setup do
    @app_x = app_xes(:one)
  end

  test "visiting the index" do
    visit app_xes_url
    assert_selector "h1", text: "App Xes"
  end

  test "creating a App x" do
    visit app_xes_url
    click_on "New App X"

    fill_in "Published", with: @app_x.published
    fill_in "Title", with: @app_x.title
    click_on "Create App x"

    assert_text "App x was successfully created"
    click_on "Back"
  end

  test "updating a App x" do
    visit app_xes_url
    click_on "Edit", match: :first

    fill_in "Published", with: @app_x.published
    fill_in "Title", with: @app_x.title
    click_on "Update App x"

    assert_text "App x was successfully updated"
    click_on "Back"
  end

  test "destroying a App x" do
    visit app_xes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "App x was successfully destroyed"
  end
end
