require 'rails_helper'

RSpec.describe "calendar_dates/show", :type => :view do
  before(:each) do
    @calendar_date = assign(:calendar_date, CalendarDate.create!(
      :date => "Date",
      :exception_type => "Exception Type",
      :service_id => "Service"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Date/)
    expect(rendered).to match(/Exception Type/)
    expect(rendered).to match(/Service/)
  end
end
