# frozen_string_literal: true

# Modelo para animal encontrado. Especifica a relacao entre
# um modelo e uma imagem.
class AnimalFound < ApplicationRecord
  has_one_attached :image
end
