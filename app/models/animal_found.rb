# frozen_string_literal: true

# Modelo para animal encontrado. Especifica a relacao entre
# um modelo e uma imagem.
class AnimalFound < ApplicationRecord
  has_one_attached :image
  validates_presence_of :image
  validates_presence_of :foundplace
  validates_presence_of :founddate
  validates_presence_of :specie
  validates_presence_of :contact
end
