class Image < ApplicationRecord
  belongs_to :flat

  validates :url, :flat, presence: true
end
