require 'rails_helper'

RSpec.describe "stop_times/edit", :type => :view do
  before(:each) do
    @stop_time = assign(:stop_time, StopTime.create!(
      :stop_id => "MyString",
      :trip_id => "MyString",
      :arrival_time => "MyString",
      :departure_time => "MyString",
      :stop_sequence => "MyString",
      :drop_off_type => "MyString",
      :pickup_type => "MyString",
      :shape_dist_traveled => "MyString",
      :stop_headsign => "MyString"
    ))
  end

  it "renders the edit stop_time form" do
    render

    assert_select "form[action=?][method=?]", stop_time_path(@stop_time), "post" do

      assert_select "input#stop_time_stop_id[name=?]", "stop_time[stop_id]"

      assert_select "input#stop_time_trip_id[name=?]", "stop_time[trip_id]"

      assert_select "input#stop_time_arrival_time[name=?]", "stop_time[arrival_time]"

      assert_select "input#stop_time_departure_time[name=?]", "stop_time[departure_time]"

      assert_select "input#stop_time_stop_sequence[name=?]", "stop_time[stop_sequence]"

      assert_select "input#stop_time_drop_off_type[name=?]", "stop_time[drop_off_type]"

      assert_select "input#stop_time_pickup_type[name=?]", "stop_time[pickup_type]"

      assert_select "input#stop_time_shape_dist_traveled[name=?]", "stop_time[shape_dist_traveled]"

      assert_select "input#stop_time_stop_headsign[name=?]", "stop_time[stop_headsign]"
    end
  end
end
