# frozen_string_literal: true

json.extract! animal_lost, :id, :specie, :sex, :lostdate, :lostplace, :contact, :ps, :created_at, :updated_at
json.url animal_lost_url(animal_lost, format: :json)
