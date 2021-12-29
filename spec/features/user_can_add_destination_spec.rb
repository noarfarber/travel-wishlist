require 'rails_helper'

feature 'Destinations' do
  scenario 'A user can add a destination a see it' do
    visit '/destinations/new'
    fill_in 'destination_location', with: 'Paris'
    attach_file 'Image', '/Users/noafarber/Projects/travel-wishlist/spec/features/images/something_img.png'
    click_button 'Create Destination'
    visit '/destinations/1'

    expect(page).to have_content 'Paris'
  end
end
