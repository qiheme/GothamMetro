require 'rails_helper'

RSpec.describe "calendars/show", :type => :view do
  before(:each) do
    @calendar = assign(:calendar, Calendar.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Service Name/)
    expect(rendered).to match(/Service/)
    expect(rendered).to match(/Start Date/)
    expect(rendered).to match(/End Date/)
    expect(rendered).to match(/Monday/)
    expect(rendered).to match(/Tuesday/)
    expect(rendered).to match(/Wednesday/)
    expect(rendered).to match(/Thursday/)
    expect(rendered).to match(/Friday/)
    expect(rendered).to match(/Saturday/)
    expect(rendered).to match(/Sunday/)
  end
end
