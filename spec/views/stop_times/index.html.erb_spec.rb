require 'rails_helper'

RSpec.describe "stop_times/index", :type => :view do
  before(:each) do
    assign(:stop_times, [
      StopTime.create!(
        :stop_id => "Stop",
        :trip_id => "Trip",
        :arrival_time => "Arrival Time",
        :departure_time => "Departure Time",
        :stop_sequence => "Stop Sequence",
        :drop_off_type => "Drop Off Type",
        :pickup_type => "Pickup Type",
        :shape_dist_traveled => "Shape Dist Traveled",
        :stop_headsign => "Stop Headsign"
      ),
      StopTime.create!(
        :stop_id => "Stop",
        :trip_id => "Trip",
        :arrival_time => "Arrival Time",
        :departure_time => "Departure Time",
        :stop_sequence => "Stop Sequence",
        :drop_off_type => "Drop Off Type",
        :pickup_type => "Pickup Type",
        :shape_dist_traveled => "Shape Dist Traveled",
        :stop_headsign => "Stop Headsign"
      )
    ])
  end

  it "renders a list of stop_times" do
    render
    assert_select "tr>td", :text => "Stop".to_s, :count => 2
    assert_select "tr>td", :text => "Trip".to_s, :count => 2
    assert_select "tr>td", :text => "Arrival Time".to_s, :count => 2
    assert_select "tr>td", :text => "Departure Time".to_s, :count => 2
    assert_select "tr>td", :text => "Stop Sequence".to_s, :count => 2
    assert_select "tr>td", :text => "Drop Off Type".to_s, :count => 2
    assert_select "tr>td", :text => "Pickup Type".to_s, :count => 2
    assert_select "tr>td", :text => "Shape Dist Traveled".to_s, :count => 2
    assert_select "tr>td", :text => "Stop Headsign".to_s, :count => 2
  end
end
