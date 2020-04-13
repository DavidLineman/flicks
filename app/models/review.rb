class Review < ApplicationRecord
  belongs_to :movie

  validates :name, presence: true
  validates :comment, presence: true, length: { minimum: 4 }

  STARS = [1, 2, 3, 4, 5]

  validates :stars, inclusion: {
    in: STARS, 
    message: "Must be between 1 and 5 stars."
  }
end
