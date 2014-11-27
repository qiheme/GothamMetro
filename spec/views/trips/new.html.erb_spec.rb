require 'rails_helper'

RSpec.describe "trips/new", :type => :view do
  before(:each) do
    assign(:trip, Trip.new(
      :bikes_allowed => "MyString",
      :block_id => "MyString",
      :direction_id => "MyString",
      :headsign => "MyString",
      :trip_id => "MyString",
      :route_id => "MyString",
      :service_id => "MyString",
      :shape_id => "MyString",
      :short_name => "MyString"
    ))
  end

  it "renders new trip form" do
    render

    assert_select "form[action=?][method=?]", trips_path, "post" do

      assert_select "input#trip_bikes_allowed[name=?]", "trip[bikes_allowed]"

      assert_select "input#trip_block_id[name=?]", "trip[block_id]"

      assert_select "input#trip_direction_id[name=?]", "trip[direction_id]"

      assert_select "input#trip_headsign[name=?]", "trip[headsign]"

      assert_select "input#trip_trip_id[name=?]", "trip[trip_id]"

      assert_select "input#trip_route_id[name=?]", "trip[route_id]"

      assert_select "input#trip_service_id[name=?]", "trip[service_id]"

      assert_select "input#trip_shape_id[name=?]", "trip[shape_id]"

      assert_select "input#trip_short_name[name=?]", "trip[short_name]"
    end
  end
end
