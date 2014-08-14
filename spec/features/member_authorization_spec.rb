require 'rails_helper'


feature 'member level authorization', %q{
  as a site owner
  I want to ensure role authorization
  so that I control access
  } do

scenario 'authenticated member attempts admin breach' do
    user = FactoryGirl.create(:user)
    visit new_study_path
    expect(current_path).to eq(root_path)
  end
end
