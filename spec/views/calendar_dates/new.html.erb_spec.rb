require 'rails_helper'

RSpec.describe "calendar_dates/new", :type => :view do
  before(:each) do
    assign(:calendar_date, CalendarDate.new(
      :date => "MyString",
      :exception_type => "MyString",
      :service_id => "MyString"
    ))
  end

  it "renders new calendar_date form" do
    render

    assert_select "form[action=?][method=?]", calendar_dates_path, "post" do

      assert_select "input#calendar_date_date[name=?]", "calendar_date[date]"

      assert_select "input#calendar_date_exception_type[name=?]", "calendar_date[exception_type]"

      assert_select "input#calendar_date_service_id[name=?]", "calendar_date[service_id]"
    end
  end
end
