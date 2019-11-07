class User < ApplicationRecord
    validates :email, uniqueness: true
    validates :name, presence: true
    validates :email, presence: true
    has_secure_password


    has_many :user_shoes
    has_many :shoe_sizes, through: :user_shoes
    has_many :shoes, through: :shoe_sizes
end
