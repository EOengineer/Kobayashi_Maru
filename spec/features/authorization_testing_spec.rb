require 'rails_helper'


feature 'Site owner verifieds authorization', %q{
  as a site owner
  I want to ensure role authorization
  so that I control access
  } do

scenario 'authenticated member attempts admin access' do
    user = FactoryGirl.create(:user)
    visit new_study_path
    expect(current_path).to eq(root_path)
  end
end
