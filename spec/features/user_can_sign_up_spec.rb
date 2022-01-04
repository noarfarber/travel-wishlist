require 'rails_helper'

feature 'Sign up' do
  scenario 'A user can sign up' do
    visit '/'
    click_link 'Sign Up'
    fill_in 'Name', with: 'User'
    fill_in 'Email', with: 'user@gmail.com'
    fill_in 'Password', with: '12345'
    click_button 'Sign Up'

    expect(current_path).to eq '/destinations'
    expect(page).to have_content 'Hey User'
  end
end
