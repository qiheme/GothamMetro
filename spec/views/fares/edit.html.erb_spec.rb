require 'rails_helper'

RSpec.describe "fares/edit", :type => :view do
  before(:each) do
    @fare = assign(:fare, Fare.create!(
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

  it "renders the edit fare form" do
    render

    assert_select "form[action=?][method=?]", fare_path(@fare), "post" do

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
