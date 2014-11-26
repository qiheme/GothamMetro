require "rails_helper"

RSpec.describe CalendarDatesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/calendar_dates").to route_to("calendar_dates#index")
    end

    it "routes to #new" do
      expect(:get => "/calendar_dates/new").to route_to("calendar_dates#new")
    end

    it "routes to #show" do
      expect(:get => "/calendar_dates/1").to route_to("calendar_dates#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/calendar_dates/1/edit").to route_to("calendar_dates#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/calendar_dates").to route_to("calendar_dates#create")
    end

    it "routes to #update" do
      expect(:put => "/calendar_dates/1").to route_to("calendar_dates#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/calendar_dates/1").to route_to("calendar_dates#destroy", :id => "1")
    end

  end
end
