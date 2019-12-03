# frozen_string_literal: true

# Modelo para animal perdido. Especifica a relacao entre
# um modelo e uma imagem.
class AnimalLost < ApplicationRecord
  has_one_attached :image
  validates_presence_of :image
  validates_presence_of :lostplace
  validates_presence_of :lostdate
  validates_presence_of :specie
  validates_presence_of :contact
end
