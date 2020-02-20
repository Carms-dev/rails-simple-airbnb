class Flat < ApplicationRecord
  has_many :reviews
  has_many :images

  validates :name, :address, :description, presence: true
  validates :price_per_night, presence: true, numericality: { only_integer: true }
  validates :number_of_guests, presence: true, numericality: { only_integer: true }
end
