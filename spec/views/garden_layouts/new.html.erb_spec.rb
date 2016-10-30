require 'rails_helper'

RSpec.describe "garden_layouts/new", type: :view do
  before(:each) do
    assign(:garden_layout, GardenLayout.new(
      :id => "",
      :data => "MyString",
      :compeleted => false
    ))
  end

  it "renders new garden_layout form" do
    render

    assert_select "form[action=?][method=?]", garden_layouts_path, "post" do

      assert_select "input#garden_layout_id[name=?]", "garden_layout[id]"

      assert_select "input#garden_layout_data[name=?]", "garden_layout[data]"

      assert_select "input#garden_layout_compeleted[name=?]", "garden_layout[compeleted]"
    end
  end
end
