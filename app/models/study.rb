class Study < ActiveRecord::Base

  belongs_to :cancer_subtype
  belongs_to :status
  belongs_to :size
  belongs_to :duration
end
