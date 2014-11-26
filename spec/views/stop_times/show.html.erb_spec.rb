require 'rails_helper'

RSpec.describe "stop_times/show", :type => :view do
  before(:each) do
    @stop_time = assign(:stop_time, StopTime.create!(
      :stop_id => "Stop",
      :trip_id => "Trip",
      :arrival_time => "Arrival Time",
      :departure_time => "Departure Time",
      :stop_sequence => "Stop Sequence",
      :drop_off_type => "Drop Off Type",
      :pickup_type => "Pickup Type",
      :shape_dist_traveled => "Shape Dist Traveled",
      :stop_headsign => "Stop Headsign"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Stop/)
    expect(rendered).to match(/Trip/)
    expect(rendered).to match(/Arrival Time/)
    expect(rendered).to match(/Departure Time/)
    expect(rendered).to match(/Stop Sequence/)
    expect(rendered).to match(/Drop Off Type/)
    expect(rendered).to match(/Pickup Type/)
    expect(rendered).to match(/Shape Dist Traveled/)
    expect(rendered).to match(/Stop Headsign/)
  end
end
