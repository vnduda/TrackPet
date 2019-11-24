require "application_system_test_case"

class AnimalEncontradosTest < ApplicationSystemTestCase
  setup do
    @animal_encontrado = animal_encontrados(:one)
  end

  test "visiting the index" do
    visit animal_encontrados_url
    assert_selector "h1", text: "Animal Encontrados"
  end

  test "creating a Animal encontrado" do
    visit animal_encontrados_url
    click_on "New Animal Encontrado"

    fill_in "Contact", with: @animal_encontrado.contact
    fill_in "Founddate", with: @animal_encontrado.founddate
    fill_in "Foundplace", with: @animal_encontrado.foundplace
    fill_in "Ps", with: @animal_encontrado.ps
    fill_in "Sex", with: @animal_encontrado.sex
    fill_in "Specie", with: @animal_encontrado.specie
    click_on "Create Animal encontrado"

    assert_text "Animal encontrado was successfully created"
    click_on "Back"
  end

  test "updating a Animal encontrado" do
    visit animal_encontrados_url
    click_on "Edit", match: :first

    fill_in "Contact", with: @animal_encontrado.contact
    fill_in "Founddate", with: @animal_encontrado.founddate
    fill_in "Foundplace", with: @animal_encontrado.foundplace
    fill_in "Ps", with: @animal_encontrado.ps
    fill_in "Sex", with: @animal_encontrado.sex
    fill_in "Specie", with: @animal_encontrado.specie
    click_on "Update Animal encontrado"

    assert_text "Animal encontrado was successfully updated"
    click_on "Back"
  end

  test "destroying a Animal encontrado" do
    visit animal_encontrados_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Animal encontrado was successfully destroyed"
  end
end
