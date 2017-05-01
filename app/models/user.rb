class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
    has_many :reviews, dependent: :destroy
    has_many :trips, through: :reviews
    validates :email, uniqueness: true
    has_many :votes, dependent: :destroy
    devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

    def is_admin?
      role == "admin"
    end
end
