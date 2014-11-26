require 'rails_helper'

RSpec.describe "shapes/new", :type => :view do
  before(:each) do
    assign(:shape, Shape.new(
      :dist_traveled => "MyString",
      :shape_id => "MyString",
      :pt_lat => "MyString",
      :pt_lon => "MyString",
      :pt_sequence => "MyString"
    ))
  end

  it "renders new shape form" do
    render

    assert_select "form[action=?][method=?]", shapes_path, "post" do

      assert_select "input#shape_dist_traveled[name=?]", "shape[dist_traveled]"

      assert_select "input#shape_shape_id[name=?]", "shape[shape_id]"

      assert_select "input#shape_pt_lat[name=?]", "shape[pt_lat]"

      assert_select "input#shape_pt_lon[name=?]", "shape[pt_lon]"

      assert_select "input#shape_pt_sequence[name=?]", "shape[pt_sequence]"
    end
  end
end
