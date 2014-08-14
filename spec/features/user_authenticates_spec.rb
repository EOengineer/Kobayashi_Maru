require 'rails_helper'


feature 'user signs in', %q{
  as a registered user
  I want to sign in
  to gain access to the site
  } do

  scenario 'user enters no credentials' do
    user = FactoryGirl.create(:user)
    visit new_user_session_url
    click_button 'Sign in'
    expect(current_path).to eq('/users/sign_in')
  end

  scenario 'user enters invalid credentials' do
    user = FactoryGirl.create(:user)
    visit new_user_session_url
    fill_in 'Email', with: user.email
    fill_in "Password", with: 'wrongpassword'
    click_button 'Sign in'
    expect(page).to have_content('Invalid email or password')
    expect(current_path).to eq("/users/sign_in")
  end

  scenario 'user enters valid credentials' do
    user = FactoryGirl.create(:user)
    visit new_user_session_url
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Sign in'
    expect(current_path).to eq(root_path)
    expect(page).to have_content('Signed in successfully')
  end


end
