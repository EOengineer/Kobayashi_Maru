require 'rails_helper'

RSpec.describe Study, :type => :model do
  it {should validate_presence_of(:title)}
  it {should validate_presence_of(:summary)}
  it {should validate_presence_of(:cancer_subtype_id)}
  it {should validate_presence_of(:duration_id)}
  it {should validate_presence_of(:size_id)}
  it {should validate_presence_of(:state_id)}
  it {should validate_presence_of(:status_id)}
  it {should validate_presence_of(:user_id)}
  it {should belong_to(:cancer_subtype)}
  it {should belong_to(:duration)}
  it {should belong_to(:size)}
  it {should belong_to(:state)}
  it {should belong_to(:status)}
  it {should belong_to(:user)}
end
