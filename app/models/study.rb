class Study < ActiveRecord::Base

  belongs_to :cancer_subtype
  belongs_to :status
  belongs_to :size
  belongs_to :duration
  belongs_to :state
  belongs_to :user

  validates :user_id, presence: true
  validates :title, presence: true
  validates :summary, presence: true
  validates :cancer_subtype_id, presence: true
  validates :status_id, presence: true
  validates :size_id, presence: true
  validates :duration_id, presence: true
  validates :state_id, presence: true
end
