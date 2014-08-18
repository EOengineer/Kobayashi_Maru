require 'rails_helper'


feature 'user posts a new study', %q{
  as a site user
  I want to post a new study
  so that others will be aware of my work
  } do



  scenario 'authenticated member posts a new study' do
    user = FactoryGirl.create(:user)
    visit new_study_path
    expect(current_path).to eq('/users/sign_in')
    expect(page).to have_content('You need to sign in or sign up before continuing.')
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Sign in'
    expect(current_path).to eq(new_study_path)

    #cancer info
    select 'Inflammatory Breast Cancer', from: 'Cancer subtype'

    #study info
    fill_in 'Title', with: 'Breast Cancer in Automotive Workers'
    select 'Completed', from: 'Status'
    fill_in 'Size', with: '25'
    select '6 months', from: 'duration'
    fill_in 'Summary', with: 'This study was condicted over 6 months in Boston.  It involved monitoring 25 patients for changes under organic diet.'

    #location info
    fill_in 'City', with: 'Boston'
    select 'MA', from: 'State'
  end
end
