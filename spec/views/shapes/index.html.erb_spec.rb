require 'rails_helper'

RSpec.describe "shapes/index", :type => :view do
  before(:each) do
    assign(:shapes, [
      Shape.create!(
        :dist_traveled => "Dist Traveled",
        :shape_id => "Shape",
        :pt_lat => "Pt Lat",
        :pt_lon => "Pt Lon",
        :pt_sequence => "Pt Sequence"
      ),
      Shape.create!(
        :dist_traveled => "Dist Traveled",
        :shape_id => "Shape",
        :pt_lat => "Pt Lat",
        :pt_lon => "Pt Lon",
        :pt_sequence => "Pt Sequence"
      )
    ])
  end

  it "renders a list of shapes" do
    render
    assert_select "tr>td", :text => "Dist Traveled".to_s, :count => 2
    assert_select "tr>td", :text => "Shape".to_s, :count => 2
    assert_select "tr>td", :text => "Pt Lat".to_s, :count => 2
    assert_select "tr>td", :text => "Pt Lon".to_s, :count => 2
    assert_select "tr>td", :text => "Pt Sequence".to_s, :count => 2
  end
end
