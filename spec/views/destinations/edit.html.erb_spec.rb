require 'rails_helper'

RSpec.describe 'destinations/edit', type: :view do
  before(:each) do
    @destination = assign(:destination, Destination.create!(
                                          location: 'MyString',
                                          image: 'MyString'
    ))
  end

  it 'renders the edit destination form' do
    render

    assert_select 'form[action=?][method=?]', destination_path(@destination), 'post' do
      assert_select 'input[name=?]', 'destination[location]'

      assert_select 'input[name=?]', 'destination[image]'
    end
  end
end
