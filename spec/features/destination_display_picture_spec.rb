require 'rails_helper'

feature 'Shows a picture of the destination' do
  scenario 'The user can view a picture on the destination page' do
    visit '/destinations'
    click_link 'New destination'
    fill_in 'Location', with: 'Paris'
    attach_file 'Image', '/Users/noafarber/Projects/travel-wishlist/spec/features/images/something_img.png'
    click_button 'Create Destination'
    visit '/destinations/1'

    expect(page).to have_css("img[src*='something_img.png']")
  end
end
