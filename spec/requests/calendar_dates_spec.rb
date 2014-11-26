require 'rails_helper'

RSpec.describe "CalendarDates", :type => :request do
  describe "GET /calendar_dates" do
    it "works! (now write some real specs)" do
      get calendar_dates_path
      expect(response).to have_http_status(200)
    end
  end
end
