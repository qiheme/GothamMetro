require 'rails_helper'

RSpec.describe "calendar_dates/index", :type => :view do
  before(:each) do
    assign(:calendar_dates, [
      CalendarDate.create!(
        :date => "Date",
        :exception_type => "Exception Type",
        :service_id => "Service"
      ),
      CalendarDate.create!(
        :date => "Date",
        :exception_type => "Exception Type",
        :service_id => "Service"
      )
    ])
  end

  it "renders a list of calendar_dates" do
    render
    assert_select "tr>td", :text => "Date".to_s, :count => 2
    assert_select "tr>td", :text => "Exception Type".to_s, :count => 2
    assert_select "tr>td", :text => "Service".to_s, :count => 2
  end
end
