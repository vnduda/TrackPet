require "application_system_test_case"

class LostAnimalsTest < ApplicationSystemTestCase
  setup do
    @lost_animal = lost_animals(:one)
  end

  test "visiting the index" do
    visit lost_animals_url
    assert_selector "h1", text: "Lost Animals"
  end

  test "creating a Lost animal" do
    visit lost_animals_url
    click_on "New Lost Animal"

    fill_in "User", with: @lost_animal.User_id
    fill_in "Contact", with: @lost_animal.contact
    fill_in "Lostdate", with: @lost_animal.lostdate
    fill_in "Lostplace", with: @lost_animal.lostplace
    fill_in "Ps", with: @lost_animal.ps
    fill_in "Sex", with: @lost_animal.sex
    fill_in "Species", with: @lost_animal.species
    click_on "Create Lost animal"

    assert_text "Lost animal was successfully created"
    click_on "Back"
  end

  test "updating a Lost animal" do
    visit lost_animals_url
    click_on "Edit", match: :first

    fill_in "User", with: @lost_animal.User_id
    fill_in "Contact", with: @lost_animal.contact
    fill_in "Lostdate", with: @lost_animal.lostdate
    fill_in "Lostplace", with: @lost_animal.lostplace
    fill_in "Ps", with: @lost_animal.ps
    fill_in "Sex", with: @lost_animal.sex
    fill_in "Species", with: @lost_animal.species
    click_on "Update Lost animal"

    assert_text "Lost animal was successfully updated"
    click_on "Back"
  end

  test "destroying a Lost animal" do
    visit lost_animals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Lost animal was successfully destroyed"
  end
end
