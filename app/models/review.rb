class Review < ApplicationRecord
  belongs_to :restaurant

  validates :rating, presence: true, numericality: { only_integer: true }, format:
  { with: /\A[0-5]\z/,
    message: 'Must be between 0 and 5' }
  validates :content, presence: true
end
