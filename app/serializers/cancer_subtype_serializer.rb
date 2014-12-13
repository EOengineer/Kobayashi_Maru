class CancerSubtypeSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :studies
end
