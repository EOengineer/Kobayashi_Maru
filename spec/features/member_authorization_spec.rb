require 'rails_helper'


feature 'member level authorization', %q{
  as a site owner
  I want to ensure role authorization
  so that I control access
  } do

scenario 'unauthenticated member visits member only area' do
  user = FactoryGirl.create(:user)
  visit '/fail'
  expect(current_path).to eq('/users/sign_in')
  expect(page).to have_content('You need to sign in or sign up before continuing.')
end

scenario 'authenticated member visits members only page' do
  user = FactoryGirl.create(:user)
  visit '/fail'
  expect(current_path).to eq('/users/sign_in')
  expect(page).to have_content('You need to sign in or sign up before continuing.')
  fill_in 'Email', with: user.email
  fill_in 'Password', with: user.password
  click_button 'Sign in'
  expect(current_path).to eq('/fail')
end

# scenario 'authenticated member attempts admin breach' do
#     user = FactoryGirl.create(:user)
#     visit new_study_path
#     expect(current_path).to eq(root_path)
#   end
end
