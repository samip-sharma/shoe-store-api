class UserShoe < ApplicationRecord
  belongs_to :user
  belongs_to :shoe_size
end
