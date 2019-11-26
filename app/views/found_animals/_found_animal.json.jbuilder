# frozen_string_literal: true

json.extract! found_animal, :id, :species, :sex, :founddate, :foundplace, :contact, :ps, :User_id, :created_at, :updated_at
json.url found_animal_url(found_animal, format: :json)
