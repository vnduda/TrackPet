require 'test_helper'

class AnimalPerdidosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @animal_perdido = animal_perdidos(:one)
  end

  test "should get index" do
    get animal_perdidos_url
    assert_response :success
  end

  test "should get new" do
    get new_animal_perdido_url
    assert_response :success
  end

  test "should create animal_perdido" do
    assert_difference('AnimalPerdido.count') do
      post animal_perdidos_url, params: { animal_perdido: { contact: @animal_perdido.contact, founddate: @animal_perdido.founddate, foundplace: @animal_perdido.foundplace, ps: @animal_perdido.ps, sex: @animal_perdido.sex, specie: @animal_perdido.specie } }
    end

    assert_redirected_to animal_perdido_url(AnimalPerdido.last)
  end

  test "should show animal_perdido" do
    get animal_perdido_url(@animal_perdido)
    assert_response :success
  end

  test "should get edit" do
    get edit_animal_perdido_url(@animal_perdido)
    assert_response :success
  end

  test "should update animal_perdido" do
    patch animal_perdido_url(@animal_perdido), params: { animal_perdido: { contact: @animal_perdido.contact, founddate: @animal_perdido.founddate, foundplace: @animal_perdido.foundplace, ps: @animal_perdido.ps, sex: @animal_perdido.sex, specie: @animal_perdido.specie } }
    assert_redirected_to animal_perdido_url(@animal_perdido)
  end

  test "should destroy animal_perdido" do
    assert_difference('AnimalPerdido.count', -1) do
      delete animal_perdido_url(@animal_perdido)
    end

    assert_redirected_to animal_perdidos_url
  end
end
