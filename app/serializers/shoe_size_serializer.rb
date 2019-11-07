class ShoeSizeSerializer < ActiveModel::Serializer
  attributes :id, :size
  has_one :shoe
end
