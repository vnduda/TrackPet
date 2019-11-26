# frozen_string_literal: true

json.array! @lost_animals, partial: 'lost_animals/lost_animal', as: :lost_animal
