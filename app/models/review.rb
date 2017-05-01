class Review < ApplicationRecord
  belongs_to :user
  belongs_to :trip
  RATINGS = [1, 2, 3, 4, 5]
  has_many :votes
  validates :header, length: { maximum: 100 }

  # validates :trip_id, uniqueness: { scope: :user_id, message: "You've reviewed this movie!" }
end
