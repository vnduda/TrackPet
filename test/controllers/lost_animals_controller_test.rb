require 'test_helper'

class LostAnimalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lost_animal = lost_animals(:one)
  end

  test "should get index" do
    get lost_animals_url
    assert_response :success
  end

  test "should get new" do
    get new_lost_animal_url
    assert_response :success
  end

  test "should create lost_animal" do
    assert_difference('LostAnimal.count') do
      post lost_animals_url, params: { lost_animal: { User_id: @lost_animal.User_id, contact: @lost_animal.contact, lostdate: @lost_animal.lostdate, lostplace: @lost_animal.lostplace, ps: @lost_animal.ps, sex: @lost_animal.sex, species: @lost_animal.species } }
    end

    assert_redirected_to lost_animal_url(LostAnimal.last)
  end

  test "should show lost_animal" do
    get lost_animal_url(@lost_animal)
    assert_response :success
  end

  test "should get edit" do
    get edit_lost_animal_url(@lost_animal)
    assert_response :success
  end

  test "should update lost_animal" do
    patch lost_animal_url(@lost_animal), params: { lost_animal: { User_id: @lost_animal.User_id, contact: @lost_animal.contact, lostdate: @lost_animal.lostdate, lostplace: @lost_animal.lostplace, ps: @lost_animal.ps, sex: @lost_animal.sex, species: @lost_animal.species } }
    assert_redirected_to lost_animal_url(@lost_animal)
  end

  test "should destroy lost_animal" do
    assert_difference('LostAnimal.count', -1) do
      delete lost_animal_url(@lost_animal)
    end

    assert_redirected_to lost_animals_url
  end
end
