class UserProfile < ActiveRecord::Base
  belongs_to :user

  validates :user_id, presence: true
  validates :company, presence: true
  validates :about, presence: true
  validates :mission, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :contact, presence: true
end
