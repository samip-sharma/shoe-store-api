class UserShoeSerializer < ActiveModel::Serializer
  attributes :id
  has_one :user
  has_one :shoeSize
end
