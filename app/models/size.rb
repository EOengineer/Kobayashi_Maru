class Size < ActiveRecord::Base
  has_many :studies
  validates :number, presence: true
end
