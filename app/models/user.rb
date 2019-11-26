# frozen_string_literal: true

class User < ApplicationRecord
  has_many :LostAnimal
  has_many :FoundAnimal
end
