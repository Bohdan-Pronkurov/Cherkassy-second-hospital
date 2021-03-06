require "application_system_test_case"

class PacientsTest < ApplicationSystemTestCase
  setup do
    @pacient = pacients(:one)
  end

  test "visiting the index" do
    visit pacients_url
    assert_selector "h1", text: "Pacients"
  end

  test "creating a Pacient" do
    visit pacients_url
    click_on "New Pacient"

    click_on "Create Pacient"

    assert_text "Pacient was successfully created"
    click_on "Back"
  end

  test "updating a Pacient" do
    visit pacients_url
    click_on "Edit", match: :first

    click_on "Update Pacient"

    assert_text "Pacient was successfully updated"
    click_on "Back"
  end

  test "destroying a Pacient" do
    visit pacients_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pacient was successfully destroyed"
  end
end
