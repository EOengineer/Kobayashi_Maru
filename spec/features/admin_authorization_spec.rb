require 'rails_helper'


feature 'admin level authorization', %q{
  as a site owner
  I want to ensure admin security
  so that content is protected
  } do


  scenario 'unauthenticated admin accesses member page' do
    user = FactoryGirl.create(:user, role: 'admin')
    visit new_study_path
    expect(current_path).to eq('/users/sign_in')
    expect(page).to have_content('You need to sign in or sign up before continuing.')
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Sign in'
    expect(current_path).to eq(new_study_path)

  end


  scenario 'unauthenticated admin visits admin only page, signs in, gains access' do
    user = FactoryGirl.create(:user, role: 'admin')
    visit '/admin'
    expect(current_path).to eq(root_path)
    visit new_user_session_url
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Sign in'
    visit '/admin'
    expect(current_path).to eq('/admin')
  end


end
