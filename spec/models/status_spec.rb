require 'rails_helper'

RSpec.describe Status, :type => :model do
  it {should validate_presence_of(:name)}
  it {should have_many(:studies)}
end
