# frozen_string_literal: true

class LostAnimal < ApplicationRecord
  belongs_to :User
  has_one_attached :image
end
