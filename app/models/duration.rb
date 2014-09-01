class Duration < ActiveRecord::Base
  has_many :studies, dependent: :nullify
  validates :length, presence: true
end
