json.extract! animal_found, :id, :specie, :sex, :founddate, :foundplace, :contact, :ps, :created_at, :updated_at
json.url animal_found_url(animal_found, format: :json)
