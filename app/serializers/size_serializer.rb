class SizeSerializer < ActiveModel::Serializer
  attributes :id, :number
  has_many :studies
end
