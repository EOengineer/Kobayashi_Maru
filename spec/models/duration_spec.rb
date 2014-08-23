require 'rails_helper'

RSpec.describe Duration, :type => :model do
  it {should validate_presence_of(:length)}
end
