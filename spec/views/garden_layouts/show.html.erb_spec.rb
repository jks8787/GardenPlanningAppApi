require 'rails_helper'

RSpec.describe "garden_layouts/show", type: :view do
  before(:each) do
    @garden_layout = assign(:garden_layout, GardenLayout.create!(
      :id => "",
      :data => "Data",
      :compeleted => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Data/)
    expect(rendered).to match(/false/)
  end
end
