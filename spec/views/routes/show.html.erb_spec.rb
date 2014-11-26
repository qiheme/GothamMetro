require 'rails_helper'

RSpec.describe "routes/show", :type => :view do
  before(:each) do
    @route = assign(:route, Route.create!(
      :agency_id => "Agency",
      :color => "Color",
      :desc => "Desc",
      :id => "Id",
      :long_name => "Long Name",
      :short_name => "Short Name",
      :text_color => "Text Color",
      :type => "Type",
      :url => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Agency/)
    expect(rendered).to match(/Color/)
    expect(rendered).to match(/Desc/)
    expect(rendered).to match(/Id/)
    expect(rendered).to match(/Long Name/)
    expect(rendered).to match(/Short Name/)
    expect(rendered).to match(/Text Color/)
    expect(rendered).to match(/Type/)
    expect(rendered).to match(/MyText/)
  end
end
