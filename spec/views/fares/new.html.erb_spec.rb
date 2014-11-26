require 'rails_helper'

RSpec.describe "fares/new", :type => :view do
  before(:each) do
    assign(:fare, Fare.new(
      :agency_id => "MyString",
      :currency_type => "MyString",
      :fare_id => "MyString",
      :payment_method => "MyString",
      :price => "MyString",
      :price => "MyString",
      :transfer_duration => "MyString",
      :transfers => "MyString"
    ))
  end

  it "renders new fare form" do
    render

    assert_select "form[action=?][method=?]", fares_path, "post" do

      assert_select "input#fare_agency_id[name=?]", "fare[agency_id]"

      assert_select "input#fare_currency_type[name=?]", "fare[currency_type]"

      assert_select "input#fare_fare_id[name=?]", "fare[fare_id]"

      assert_select "input#fare_payment_method[name=?]", "fare[payment_method]"

      assert_select "input#fare_price[name=?]", "fare[price]"

      assert_select "input#fare_price[name=?]", "fare[price]"

      assert_select "input#fare_transfer_duration[name=?]", "fare[transfer_duration]"

      assert_select "input#fare_transfers[name=?]", "fare[transfers]"
    end
  end
end
