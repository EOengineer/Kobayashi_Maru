class Status < ActiveRecord::Base
  has_many :studies, dependent: :nullify
  validates :name, presence: true
end
