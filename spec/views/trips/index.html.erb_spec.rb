require 'rails_helper'

RSpec.describe "trips/index", :type => :view do
  before(:each) do
    assign(:trips, [
      Trip.create!(
        :bikes_allowed => "Bikes Allowed",
        :block_id => "Block",
        :direction_id => "Direction",
        :headsign => "Headsign",
        :trip_id => "Trip",
        :route_id => "Route",
        :service_id => "Service",
        :shape_id => "Shape",
        :short_name => "Short Name"
      ),
      Trip.create!(
        :bikes_allowed => "Bikes Allowed",
        :block_id => "Block",
        :direction_id => "Direction",
        :headsign => "Headsign",
        :trip_id => "Trip",
        :route_id => "Route",
        :service_id => "Service",
        :shape_id => "Shape",
        :short_name => "Short Name"
      )
    ])
  end

  it "renders a list of trips" do
    render
    assert_select "tr>td", :text => "Bikes Allowed".to_s, :count => 2
    assert_select "tr>td", :text => "Block".to_s, :count => 2
    assert_select "tr>td", :text => "Direction".to_s, :count => 2
    assert_select "tr>td", :text => "Headsign".to_s, :count => 2
    assert_select "tr>td", :text => "Trip".to_s, :count => 2
    assert_select "tr>td", :text => "Route".to_s, :count => 2
    assert_select "tr>td", :text => "Service".to_s, :count => 2
    assert_select "tr>td", :text => "Shape".to_s, :count => 2
    assert_select "tr>td", :text => "Short Name".to_s, :count => 2
  end
end
