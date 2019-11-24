require 'test_helper'

class AnimalEncontradosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @animal_encontrado = animal_encontrados(:one)
  end

  test "should get index" do
    get animal_encontrados_url
    assert_response :success
  end

  test "should get new" do
    get new_animal_encontrado_url
    assert_response :success
  end

  test "should create animal_encontrado" do
    assert_difference('AnimalEncontrado.count') do
      post animal_encontrados_url, params: { animal_encontrado: { contact: @animal_encontrado.contact, founddate: @animal_encontrado.founddate, foundplace: @animal_encontrado.foundplace, ps: @animal_encontrado.ps, sex: @animal_encontrado.sex, specie: @animal_encontrado.specie } }
    end

    assert_redirected_to animal_encontrado_url(AnimalEncontrado.last)
  end

  test "should show animal_encontrado" do
    get animal_encontrado_url(@animal_encontrado)
    assert_response :success
  end

  test "should get edit" do
    get edit_animal_encontrado_url(@animal_encontrado)
    assert_response :success
  end

  test "should update animal_encontrado" do
    patch animal_encontrado_url(@animal_encontrado), params: { animal_encontrado: { contact: @animal_encontrado.contact, founddate: @animal_encontrado.founddate, foundplace: @animal_encontrado.foundplace, ps: @animal_encontrado.ps, sex: @animal_encontrado.sex, specie: @animal_encontrado.specie } }
    assert_redirected_to animal_encontrado_url(@animal_encontrado)
  end

  test "should destroy animal_encontrado" do
    assert_difference('AnimalEncontrado.count', -1) do
      delete animal_encontrado_url(@animal_encontrado)
    end

    assert_redirected_to animal_encontrados_url
  end
end
