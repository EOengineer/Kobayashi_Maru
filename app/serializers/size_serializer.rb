class SizeSerializer < ActiveModel::Serializer
  attributes :id, :number
  has_many :studies
  url :size
end
