require 'rails_helper'

RSpec.describe "shapes/show", :type => :view do
  before(:each) do
    @shape = assign(:shape, Shape.create!(
      :dist_traveled => "Dist Traveled",
      :shape_id => "Shape",
      :pt_lat => "Pt Lat",
      :pt_lon => "Pt Lon",
      :pt_sequence => "Pt Sequence"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Dist Traveled/)
    expect(rendered).to match(/Shape/)
    expect(rendered).to match(/Pt Lat/)
    expect(rendered).to match(/Pt Lon/)
    expect(rendered).to match(/Pt Sequence/)
  end
end
