require "application_system_test_case"

class CepaVinosTest < ApplicationSystemTestCase
  setup do
    @cepa_vino = cepa_vinos(:one)
  end

  test "visiting the index" do
    visit cepa_vinos_url
    assert_selector "h1", text: "Cepa Vinos"
  end

  test "creating a Cepa vino" do
    visit cepa_vinos_url
    click_on "New Cepa Vino"

    click_on "Create Cepa vino"

    assert_text "Cepa vino was successfully created"
    click_on "Back"
  end

  test "updating a Cepa vino" do
    visit cepa_vinos_url
    click_on "Edit", match: :first

    click_on "Update Cepa vino"

    assert_text "Cepa vino was successfully updated"
    click_on "Back"
  end

  test "destroying a Cepa vino" do
    visit cepa_vinos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cepa vino was successfully destroyed"
  end
end
