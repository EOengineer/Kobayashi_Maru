class Status < ActiveRecord::Base
  has_many :studies
  validates :name, presence: true
end
