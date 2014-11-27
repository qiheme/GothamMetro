require 'rails_helper'

RSpec.describe "trips/show", :type => :view do
  before(:each) do
    @trip = assign(:trip, Trip.create!(
      :bikes_allowed => "Bikes Allowed",
      :block_id => "Block",
      :direction_id => "Direction",
      :headsign => "Headsign",
      :trip_id => "Trip",
      :route_id => "Route",
      :service_id => "Service",
      :shape_id => "Shape",
      :short_name => "Short Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Bikes Allowed/)
    expect(rendered).to match(/Block/)
    expect(rendered).to match(/Direction/)
    expect(rendered).to match(/Headsign/)
    expect(rendered).to match(/Trip/)
    expect(rendered).to match(/Route/)
    expect(rendered).to match(/Service/)
    expect(rendered).to match(/Shape/)
    expect(rendered).to match(/Short Name/)
  end
end
