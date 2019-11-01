class User < ApplicationRecord
    validates :email, uniqueness: true
    validates :name, presence: true
    validates :email, presence: true
    has_secure_password
end
