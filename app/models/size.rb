class Size < ActiveRecord::Base
  has_many :studies, dependent: :nullify
  validates :number, presence: true
end
