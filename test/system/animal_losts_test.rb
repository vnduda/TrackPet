require "application_system_test_case"

class AnimalLostsTest < ApplicationSystemTestCase
  setup do
    @animal_lost = animal_losts(:one)
  end

  test "visiting the index" do
    visit animal_losts_url
    assert_selector "h1", text: "Animal Losts"
  end

  test "creating a Animal lost" do
    visit animal_losts_url
    click_on "New Animal Lost"

    fill_in "Contact", with: @animal_lost.contact
    fill_in "Lostdate", with: @animal_lost.lostdate
    fill_in "Lostplace", with: @animal_lost.lostplace
    fill_in "Ps", with: @animal_lost.ps
    fill_in "Sex", with: @animal_lost.sex
    fill_in "Specie", with: @animal_lost.specie
    click_on "Create Animal lost"

    assert_text "Animal lost was successfully created"
    click_on "Back"
  end

  test "updating a Animal lost" do
    visit animal_losts_url
    click_on "Edit", match: :first

    fill_in "Contact", with: @animal_lost.contact
    fill_in "Lostdate", with: @animal_lost.lostdate
    fill_in "Lostplace", with: @animal_lost.lostplace
    fill_in "Ps", with: @animal_lost.ps
    fill_in "Sex", with: @animal_lost.sex
    fill_in "Specie", with: @animal_lost.specie
    click_on "Update Animal lost"

    assert_text "Animal lost was successfully updated"
    click_on "Back"
  end

  test "destroying a Animal lost" do
    visit animal_losts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Animal lost was successfully destroyed"
  end
end
