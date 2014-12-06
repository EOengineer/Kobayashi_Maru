class StateSerializer < ActiveModel::Serializer
  attributes :name
  has_many :studies

  # def what?
  #   binding.pry
  #   Study
  # end
end
