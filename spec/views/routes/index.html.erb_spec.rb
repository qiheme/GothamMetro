require 'rails_helper'

RSpec.describe "routes/index", :type => :view do
  before(:each) do
    assign(:routes, [
      Route.create!(
        :agency_id => "Agency",
        :color => "Color",
        :desc => "Desc",
        :id => "Id",
        :long_name => "Long Name",
        :short_name => "Short Name",
        :text_color => "Text Color",
        :type => "Type",
        :url => "MyText"
      ),
      Route.create!(
        :agency_id => "Agency",
        :color => "Color",
        :desc => "Desc",
        :id => "Id",
        :long_name => "Long Name",
        :short_name => "Short Name",
        :text_color => "Text Color",
        :type => "Type",
        :url => "MyText"
      )
    ])
  end

  it "renders a list of routes" do
    render
    assert_select "tr>td", :text => "Agency".to_s, :count => 2
    assert_select "tr>td", :text => "Color".to_s, :count => 2
    assert_select "tr>td", :text => "Desc".to_s, :count => 2
    assert_select "tr>td", :text => "Id".to_s, :count => 2
    assert_select "tr>td", :text => "Long Name".to_s, :count => 2
    assert_select "tr>td", :text => "Short Name".to_s, :count => 2
    assert_select "tr>td", :text => "Text Color".to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
