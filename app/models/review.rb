class Review < ApplicationRecord
  belongs_to :flat

  validates :content, :flat, presence: true
  validates :rating, presence: true, numericality: { only_integer: true }
end
