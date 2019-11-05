require "application_system_test_case"

class FoundAnimalsTest < ApplicationSystemTestCase
  setup do
    @found_animal = found_animals(:one)
  end

  test "visiting the index" do
    visit found_animals_url
    assert_selector "h1", text: "Found Animals"
  end

  test "creating a Found animal" do
    visit found_animals_url
    click_on "New Found Animal"

    fill_in "User", with: @found_animal.User_id
    fill_in "Contact", with: @found_animal.contact
    fill_in "Founddate", with: @found_animal.founddate
    fill_in "Foundplace", with: @found_animal.foundplace
    fill_in "Ps", with: @found_animal.ps
    fill_in "Sex", with: @found_animal.sex
    fill_in "Species", with: @found_animal.species
    click_on "Create Found animal"

    assert_text "Found animal was successfully created"
    click_on "Back"
  end

  test "updating a Found animal" do
    visit found_animals_url
    click_on "Edit", match: :first

    fill_in "User", with: @found_animal.User_id
    fill_in "Contact", with: @found_animal.contact
    fill_in "Founddate", with: @found_animal.founddate
    fill_in "Foundplace", with: @found_animal.foundplace
    fill_in "Ps", with: @found_animal.ps
    fill_in "Sex", with: @found_animal.sex
    fill_in "Species", with: @found_animal.species
    click_on "Update Found animal"

    assert_text "Found animal was successfully updated"
    click_on "Back"
  end

  test "destroying a Found animal" do
    visit found_animals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Found animal was successfully destroyed"
  end
end
