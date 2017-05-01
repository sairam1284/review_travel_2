class Trip < ApplicationRecord
  has_many :users, through: :reviews
  has_many :reviews
  belongs_to :user
  mount_uploader :pictures, PicsUploader
  validates :title, length: { maximum: 100 }
  validates :price, length: { maximum: 50 }
  validates :title, presence: true
  validates :location, presence: true
  validates :price, presence: true
  validates :overview, presence: true




  def average_score
    sum = 0
    if reviews.length > 0
      reviews.each do |review|
        sum += review.rating.to_f
      end
      sum = sum / reviews.length
      sum = sum.round(1)
    else
      sum = "None"
    end
  end

end
