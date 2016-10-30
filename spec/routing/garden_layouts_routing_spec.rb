require "rails_helper"

RSpec.describe GardenLayoutsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/garden_layouts").to route_to("garden_layouts#index")
    end

    it "routes to #new" do
      expect(:get => "/garden_layouts/new").to route_to("garden_layouts#new")
    end

    it "routes to #show" do
      expect(:get => "/garden_layouts/1").to route_to("garden_layouts#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/garden_layouts/1/edit").to route_to("garden_layouts#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/garden_layouts").to route_to("garden_layouts#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/garden_layouts/1").to route_to("garden_layouts#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/garden_layouts/1").to route_to("garden_layouts#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/garden_layouts/1").to route_to("garden_layouts#destroy", :id => "1")
    end

  end
end
