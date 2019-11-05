require 'test_helper'

class FoundAnimalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @found_animal = found_animals(:one)
  end

  test "should get index" do
    get found_animals_url
    assert_response :success
  end

  test "should get new" do
    get new_found_animal_url
    assert_response :success
  end

  test "should create found_animal" do
    assert_difference('FoundAnimal.count') do
      post found_animals_url, params: { found_animal: { User_id: @found_animal.User_id, contact: @found_animal.contact, founddate: @found_animal.founddate, foundplace: @found_animal.foundplace, ps: @found_animal.ps, sex: @found_animal.sex, species: @found_animal.species } }
    end

    assert_redirected_to found_animal_url(FoundAnimal.last)
  end

  test "should show found_animal" do
    get found_animal_url(@found_animal)
    assert_response :success
  end

  test "should get edit" do
    get edit_found_animal_url(@found_animal)
    assert_response :success
  end

  test "should update found_animal" do
    patch found_animal_url(@found_animal), params: { found_animal: { User_id: @found_animal.User_id, contact: @found_animal.contact, founddate: @found_animal.founddate, foundplace: @found_animal.foundplace, ps: @found_animal.ps, sex: @found_animal.sex, species: @found_animal.species } }
    assert_redirected_to found_animal_url(@found_animal)
  end

  test "should destroy found_animal" do
    assert_difference('FoundAnimal.count', -1) do
      delete found_animal_url(@found_animal)
    end

    assert_redirected_to found_animals_url
  end
end
