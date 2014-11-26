require 'rails_helper'

RSpec.describe "fares/index", :type => :view do
  before(:each) do
    assign(:fares, [
      Fare.create!(
        :agency_id => "Agency",
        :currency_type => "Currency Type",
        :fare_id => "Fare",
        :payment_method => "Payment Method",
        :price => "Price",
        :price => "Price",
        :transfer_duration => "Transfer Duration",
        :transfers => "Transfers"
      ),
      Fare.create!(
        :agency_id => "Agency",
        :currency_type => "Currency Type",
        :fare_id => "Fare",
        :payment_method => "Payment Method",
        :price => "Price",
        :price => "Price",
        :transfer_duration => "Transfer Duration",
        :transfers => "Transfers"
      )
    ])
  end

  it "renders a list of fares" do
    render
    assert_select "tr>td", :text => "Agency".to_s, :count => 2
    assert_select "tr>td", :text => "Currency Type".to_s, :count => 2
    assert_select "tr>td", :text => "Fare".to_s, :count => 2
    assert_select "tr>td", :text => "Payment Method".to_s, :count => 2
    assert_select "tr>td", :text => "Price".to_s, :count => 2
    assert_select "tr>td", :text => "Price".to_s, :count => 2
    assert_select "tr>td", :text => "Transfer Duration".to_s, :count => 2
    assert_select "tr>td", :text => "Transfers".to_s, :count => 2
  end
end
