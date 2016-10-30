require 'rails_helper'

RSpec.describe "garden_layouts/edit", type: :view do
  before(:each) do
    @garden_layout = assign(:garden_layout, GardenLayout.create!(
      :id => "",
      :data => "MyString",
      :compeleted => false
    ))
  end

  it "renders the edit garden_layout form" do
    render

    assert_select "form[action=?][method=?]", garden_layout_path(@garden_layout), "post" do

      assert_select "input#garden_layout_id[name=?]", "garden_layout[id]"

      assert_select "input#garden_layout_data[name=?]", "garden_layout[data]"

      assert_select "input#garden_layout_compeleted[name=?]", "garden_layout[compeleted]"
    end
  end
end
