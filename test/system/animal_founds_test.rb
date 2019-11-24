require "application_system_test_case"

class AnimalFoundsTest < ApplicationSystemTestCase
  setup do
    @animal_found = animal_founds(:one)
  end

  test "visiting the index" do
    visit animal_founds_url
    assert_selector "h1", text: "Animal Founds"
  end

  test "creating a Animal found" do
    visit animal_founds_url
    click_on "New Animal Found"

    fill_in "Contact", with: @animal_found.contact
    fill_in "Founddate", with: @animal_found.founddate
    fill_in "Foundplace", with: @animal_found.foundplace
    fill_in "Ps", with: @animal_found.ps
    fill_in "Sex", with: @animal_found.sex
    fill_in "Specie", with: @animal_found.specie
    click_on "Create Animal found"

    assert_text "Animal found was successfully created"
    click_on "Back"
  end

  test "updating a Animal found" do
    visit animal_founds_url
    click_on "Edit", match: :first

    fill_in "Contact", with: @animal_found.contact
    fill_in "Founddate", with: @animal_found.founddate
    fill_in "Foundplace", with: @animal_found.foundplace
    fill_in "Ps", with: @animal_found.ps
    fill_in "Sex", with: @animal_found.sex
    fill_in "Specie", with: @animal_found.specie
    click_on "Update Animal found"

    assert_text "Animal found was successfully updated"
    click_on "Back"
  end

  test "destroying a Animal found" do
    visit animal_founds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Animal found was successfully destroyed"
  end
end
