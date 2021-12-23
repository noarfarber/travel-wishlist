require 'rails_helper'

RSpec.feature 'Destinations' do
  scenario 'A user can add a destination a see it' do
    visit '/destinations/new'
    fill_in 'destination_location', with: 'Paris'
    click_button 'Create Destination'
    visit '/destinations'

    expect(page).to have_content 'Paris'
  end
end
