class CancerSubtypeSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :studies

  url :cancer_subtype
end
