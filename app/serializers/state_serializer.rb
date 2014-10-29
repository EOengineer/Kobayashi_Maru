class StateSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :studies
  url :state
end
