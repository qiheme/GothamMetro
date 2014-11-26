require 'rails_helper'

RSpec.describe "fares/show", :type => :view do
  before(:each) do
    @fare = assign(:fare, Fare.create!(
      :agency_id => "Agency",
      :currency_type => "Currency Type",
      :fare_id => "Fare",
      :payment_method => "Payment Method",
      :price => "Price",
      :price => "Price",
      :transfer_duration => "Transfer Duration",
      :transfers => "Transfers"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Agency/)
    expect(rendered).to match(/Currency Type/)
    expect(rendered).to match(/Fare/)
    expect(rendered).to match(/Payment Method/)
    expect(rendered).to match(/Price/)
    expect(rendered).to match(/Price/)
    expect(rendered).to match(/Transfer Duration/)
    expect(rendered).to match(/Transfers/)
  end
end
