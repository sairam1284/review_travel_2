class Trip < ApplicationRecord
  has_many :users, through: :reviews
  has_many :reviews
end
