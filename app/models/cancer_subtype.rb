class CancerSubtype < ActiveRecord::Base
  validates :name, presence: true
  has_many :studies
end
