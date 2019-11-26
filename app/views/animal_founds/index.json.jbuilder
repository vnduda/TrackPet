# frozen_string_literal: true

json.array! @animal_founds, partial: 'animal_founds/animal_found', as: :animal_found
