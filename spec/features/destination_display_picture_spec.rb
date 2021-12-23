require 'rails_helper'

feature 'Shows a picture of destination' do
  scenario 'the user can view a picture of the destination' do
    visit '/destinations'
    click_link 'New destination'
    fill_in 'Location', with: 'Paris'
    attach_file 'Image', '/images/something_img.png'
    click_button 'Create Destination'
    expect(page).to have_css("img[src*='something_img.png']")
  end
end
