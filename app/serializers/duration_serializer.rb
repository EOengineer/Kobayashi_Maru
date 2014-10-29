class DurationSerializer < ActiveModel::Serializer
  attributes :id, :length
  has_many :studies
  url :duration
end
