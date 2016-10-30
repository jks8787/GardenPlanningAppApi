require 'rails_helper'

RSpec.describe "GardenLayouts", type: :request do
  describe "GET /garden_layouts" do
    it "works! (now write some real specs)" do
      get garden_layouts_path
      expect(response).to have_http_status(200)
    end
  end
end
