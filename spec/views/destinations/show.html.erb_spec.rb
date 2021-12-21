require 'rails_helper'

RSpec.describe "destinations/show", type: :view do
  before(:each) do
    @destination = assign(:destination, Destination.create!(
      location: "Location",
      image: "Image"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Location/)
    expect(rendered).to match(/Image/)
  end
end
