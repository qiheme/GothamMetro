require 'rails_helper'

RSpec.describe "Shapes", :type => :request do
  describe "GET /shapes" do
    it "works! (now write some real specs)" do
      get shapes_path
      expect(response).to have_http_status(200)
    end
  end
end
