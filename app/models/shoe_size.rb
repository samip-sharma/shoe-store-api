class ShoeSize < ApplicationRecord
  belongs_to :shoe
  has_many :user_shoes
end
