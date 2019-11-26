# frozen_string_literal: true

class AnimalFound < ApplicationRecord
  has_one_attached :image
end
