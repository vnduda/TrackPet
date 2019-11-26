# frozen_string_literal: true

class User < ApplicationRecord
<<<<<<< HEAD
  has_many :LostAnimal
  has_many :FoundAnimal
=======
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
>>>>>>> master
end
