require 'rails_helper'

RSpec.describe "calendars/index", :type => :view do
  before(:each) do
    assign(:calendars, [
      Calendar.create!(
        :service_name => "Service Name",
        :service_id => "Service",
        :start_date => "Start Date",
        :end_date => "End Date",
        :monday => "Monday",
        :tuesday => "Tuesday",
        :wednesday => "Wednesday",
        :thursday => "Thursday",
        :friday => "Friday",
        :saturday => "Saturday",
        :sunday => "Sunday"
      ),
      Calendar.create!(
        :service_name => "Service Name",
        :service_id => "Service",
        :start_date => "Start Date",
        :end_date => "End Date",
        :monday => "Monday",
        :tuesday => "Tuesday",
        :wednesday => "Wednesday",
        :thursday => "Thursday",
        :friday => "Friday",
        :saturday => "Saturday",
        :sunday => "Sunday"
      )
    ])
  end

  it "renders a list of calendars" do
    render
    assert_select "tr>td", :text => "Service Name".to_s, :count => 2
    assert_select "tr>td", :text => "Service".to_s, :count => 2
    assert_select "tr>td", :text => "Start Date".to_s, :count => 2
    assert_select "tr>td", :text => "End Date".to_s, :count => 2
    assert_select "tr>td", :text => "Monday".to_s, :count => 2
    assert_select "tr>td", :text => "Tuesday".to_s, :count => 2
    assert_select "tr>td", :text => "Wednesday".to_s, :count => 2
    assert_select "tr>td", :text => "Thursday".to_s, :count => 2
    assert_select "tr>td", :text => "Friday".to_s, :count => 2
    assert_select "tr>td", :text => "Saturday".to_s, :count => 2
    assert_select "tr>td", :text => "Sunday".to_s, :count => 2
  end
end
