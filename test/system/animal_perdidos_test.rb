require "application_system_test_case"

class AnimalPerdidosTest < ApplicationSystemTestCase
  setup do
    @animal_perdido = animal_perdidos(:one)
  end

  test "visiting the index" do
    visit animal_perdidos_url
    assert_selector "h1", text: "Animal Perdidos"
  end

  test "creating a Animal perdido" do
    visit animal_perdidos_url
    click_on "New Animal Perdido"

    fill_in "Contact", with: @animal_perdido.contact
    fill_in "Founddate", with: @animal_perdido.founddate
    fill_in "Foundplace", with: @animal_perdido.foundplace
    fill_in "Ps", with: @animal_perdido.ps
    fill_in "Sex", with: @animal_perdido.sex
    fill_in "Specie", with: @animal_perdido.specie
    click_on "Create Animal perdido"

    assert_text "Animal perdido was successfully created"
    click_on "Back"
  end

  test "updating a Animal perdido" do
    visit animal_perdidos_url
    click_on "Edit", match: :first

    fill_in "Contact", with: @animal_perdido.contact
    fill_in "Founddate", with: @animal_perdido.founddate
    fill_in "Foundplace", with: @animal_perdido.foundplace
    fill_in "Ps", with: @animal_perdido.ps
    fill_in "Sex", with: @animal_perdido.sex
    fill_in "Specie", with: @animal_perdido.specie
    click_on "Update Animal perdido"

    assert_text "Animal perdido was successfully updated"
    click_on "Back"
  end

  test "destroying a Animal perdido" do
    visit animal_perdidos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Animal perdido was successfully destroyed"
  end
end
