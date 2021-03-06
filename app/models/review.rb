class Review < ApplicationRecord
  belongs_to :movie
  belongs_to :user

  validates :comment, presence: true, length: { minimum: 4 }

  scope :past_n_days, ->(num=4) { where("created_at >= ?", num.days.ago) }

  STARS = [1, 2, 3, 4, 5]

  validates :stars, inclusion: {
    in: STARS, 
    message: "Must be between 1 and 5 stars."
  }

  def stars_as_percent
    (stars / 5.0) * 100
  end
  
end
