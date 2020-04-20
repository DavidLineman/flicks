class Review < ApplicationRecord
  belongs_to :movie

  validates :name, presence: true
  validates :comment, presence: true, length: { minimum: 4 }

  stars = [1, 2, 3, 4, 5]

  validates :stars, inclusion: {
    in: stars, 
    message: "Must be between 1 and 5 stars."
  }

  def stars_as_percent
    (stars / 5.0) * 100
  end
  
end
