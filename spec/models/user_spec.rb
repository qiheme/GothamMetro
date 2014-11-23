require "rails_helper"

describe User, '#email' do
  it "has an email" do
    user = User.create(email: "sonicspeed129@gmail.com", password_digest: "Lindeman")
   	# User.create!(email: "qiheme@aol.com", password_digest: "Lindeman")

    expect(user.email).to eq("sonicspeed129@gmail.com")
  end
end