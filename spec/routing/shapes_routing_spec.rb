require "rails_helper"

RSpec.describe ShapesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/shapes").to route_to("shapes#index")
    end

    it "routes to #new" do
      expect(:get => "/shapes/new").to route_to("shapes#new")
    end

    it "routes to #show" do
      expect(:get => "/shapes/1").to route_to("shapes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/shapes/1/edit").to route_to("shapes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/shapes").to route_to("shapes#create")
    end

    it "routes to #update" do
      expect(:put => "/shapes/1").to route_to("shapes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/shapes/1").to route_to("shapes#destroy", :id => "1")
    end

  end
end
