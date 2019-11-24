require 'test_helper'

class AnimalLostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @animal_lost = animal_losts(:one)
  end

  test "should get index" do
    get animal_losts_url
    assert_response :success
  end

  test "should get new" do
    get new_animal_lost_url
    assert_response :success
  end

  test "should create animal_lost" do
    assert_difference('AnimalLost.count') do
      post animal_losts_url, params: { animal_lost: { contact: @animal_lost.contact, lostdate: @animal_lost.lostdate, lostplace: @animal_lost.lostplace, ps: @animal_lost.ps, sex: @animal_lost.sex, specie: @animal_lost.specie } }
    end

    assert_redirected_to animal_lost_url(AnimalLost.last)
  end

  test "should show animal_lost" do
    get animal_lost_url(@animal_lost)
    assert_response :success
  end

  test "should get edit" do
    get edit_animal_lost_url(@animal_lost)
    assert_response :success
  end

  test "should update animal_lost" do
    patch animal_lost_url(@animal_lost), params: { animal_lost: { contact: @animal_lost.contact, lostdate: @animal_lost.lostdate, lostplace: @animal_lost.lostplace, ps: @animal_lost.ps, sex: @animal_lost.sex, specie: @animal_lost.specie } }
    assert_redirected_to animal_lost_url(@animal_lost)
  end

  test "should destroy animal_lost" do
    assert_difference('AnimalLost.count', -1) do
      delete animal_lost_url(@animal_lost)
    end

    assert_redirected_to animal_losts_url
  end
end
