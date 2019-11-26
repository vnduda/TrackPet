# frozen_string_literal: true

json.array! @animal_losts, partial: 'animal_losts/animal_lost', as: :animal_lost
