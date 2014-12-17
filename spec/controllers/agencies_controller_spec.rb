require 'rails_helper'

RSpec.describe AgenciesController, :type => :controller do
	describe "index" do
		it "prints out the list of agencies" do
			agencies = Agency.all
			page.should have_content(agencies)
		end
	end
end
