require 'rails_helper'

RSpec.describe "calendars/edit", :type => :view do
  before(:each) do
    @calendar = assign(:calendar, Calendar.create!(
      :service_name => "MyString",
      :service_id => "MyString",
      :start_date => "MyString",
      :end_date => "MyString",
      :monday => "MyString",
      :tuesday => "MyString",
      :wednesday => "MyString",
      :thursday => "MyString",
      :friday => "MyString",
      :saturday => "MyString",
      :sunday => "MyString"
    ))
  end

  it "renders the edit calendar form" do
    render

    assert_select "form[action=?][method=?]", calendar_path(@calendar), "post" do

      assert_select "input#calendar_service_name[name=?]", "calendar[service_name]"

      assert_select "input#calendar_service_id[name=?]", "calendar[service_id]"

      assert_select "input#calendar_start_date[name=?]", "calendar[start_date]"

      assert_select "input#calendar_end_date[name=?]", "calendar[end_date]"

      assert_select "input#calendar_monday[name=?]", "calendar[monday]"

      assert_select "input#calendar_tuesday[name=?]", "calendar[tuesday]"

      assert_select "input#calendar_wednesday[name=?]", "calendar[wednesday]"

      assert_select "input#calendar_thursday[name=?]", "calendar[thursday]"

      assert_select "input#calendar_friday[name=?]", "calendar[friday]"

      assert_select "input#calendar_saturday[name=?]", "calendar[saturday]"

      assert_select "input#calendar_sunday[name=?]", "calendar[sunday]"
    end
  end
end
