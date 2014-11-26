require 'rails_helper'

RSpec.describe "routes/new", :type => :view do
  before(:each) do
    assign(:route, Route.new(
      :agency_id => "MyString",
      :color => "MyString",
      :desc => "MyString",
      :id => "MyString",
      :long_name => "MyString",
      :short_name => "MyString",
      :text_color => "MyString",
      :type => "",
      :url => "MyText"
    ))
  end

  it "renders new route form" do
    render

    assert_select "form[action=?][method=?]", routes_path, "post" do

      assert_select "input#route_agency_id[name=?]", "route[agency_id]"

      assert_select "input#route_color[name=?]", "route[color]"

      assert_select "input#route_desc[name=?]", "route[desc]"

      assert_select "input#route_id[name=?]", "route[id]"

      assert_select "input#route_long_name[name=?]", "route[long_name]"

      assert_select "input#route_short_name[name=?]", "route[short_name]"

      assert_select "input#route_text_color[name=?]", "route[text_color]"

      assert_select "input#route_type[name=?]", "route[type]"

      assert_select "textarea#route_url[name=?]", "route[url]"
    end
  end
end
