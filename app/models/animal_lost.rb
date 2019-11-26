# frozen_string_literal: true

class AnimalLost < ApplicationRecord
  has_one_attached :image
end
