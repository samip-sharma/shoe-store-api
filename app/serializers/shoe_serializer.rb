class ShoeSerializer < ActiveModel::Serializer
  attributes :id, :name, :brand, :price, :latest
end
