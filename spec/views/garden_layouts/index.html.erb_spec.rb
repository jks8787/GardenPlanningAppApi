require 'rails_helper'

RSpec.describe "garden_layouts/index", type: :view do
  before(:each) do
    assign(:garden_layouts, [
      GardenLayout.create!(
        :id => "",
        :data => "Data",
        :compeleted => false
      ),
      GardenLayout.create!(
        :id => "",
        :data => "Data",
        :compeleted => false
      )
    ])
  end

  it "renders a list of garden_layouts" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Data".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
