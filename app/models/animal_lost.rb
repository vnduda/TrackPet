# frozen_string_literal: true

# Modelo para animal perdido. Especifica a relacao entre
# um modelo e uma imagem.
class AnimalLost < ApplicationRecord
  has_one_attached :image
end
