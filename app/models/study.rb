class Study < ActiveRecord::Base

  has_many :cancer_subtype
  has_many :status
  has_many :size
  has_many :duration
end
