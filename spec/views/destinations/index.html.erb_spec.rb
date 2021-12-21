require 'rails_helper'

RSpec.describe "destinations/index", type: :view do
  before(:each) do
    assign(:destinations, [
      Destination.create!(
        location: "Location",
        image: "Image"
      ),
      Destination.create!(
        location: "Location",
        image: "Image"
      )
    ])
  end

  it "renders a list of destinations" do
    render
    assert_select "tr>td", text: "Location".to_s, count: 2
    assert_select "tr>td", text: "Image".to_s, count: 2
  end
end
