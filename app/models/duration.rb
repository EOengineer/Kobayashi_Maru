class Duration < ActiveRecord::Base
  has_many :studies
  validates :length, presence: true
end
