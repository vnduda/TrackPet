require 'test_helper'

class AnimalFoundsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @animal_found = animal_founds(:one)
  end

  test "should get index" do
    get animal_founds_url
    assert_response :success
  end

  test "should get new" do
    get new_animal_found_url
    assert_response :success
  end

  test "should create animal_found" do
    assert_difference('AnimalFound.count') do
      post animal_founds_url, params: { animal_found: { contact: @animal_found.contact, founddate: @animal_found.founddate, foundplace: @animal_found.foundplace, ps: @animal_found.ps, sex: @animal_found.sex, specie: @animal_found.specie } }
    end

    assert_redirected_to animal_found_url(AnimalFound.last)
  end

  test "should show animal_found" do
    get animal_found_url(@animal_found)
    assert_response :success
  end

  test "should get edit" do
    get edit_animal_found_url(@animal_found)
    assert_response :success
  end

  test "should update animal_found" do
    patch animal_found_url(@animal_found), params: { animal_found: { contact: @animal_found.contact, founddate: @animal_found.founddate, foundplace: @animal_found.foundplace, ps: @animal_found.ps, sex: @animal_found.sex, specie: @animal_found.specie } }
    assert_redirected_to animal_found_url(@animal_found)
  end

  test "should destroy animal_found" do
    assert_difference('AnimalFound.count', -1) do
      delete animal_found_url(@animal_found)
    end

    assert_redirected_to animal_founds_url
  end
end
