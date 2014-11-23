require "rails_helper"

describe User, '#email' do
  it "has an email" do
    user = User.create(email: "sonicspeed129@gmail.com", password_digest: "Lindeman")
   	# User.create!(email: "qiheme@aol.com", password_digest: "Lindeman")

    expect(user.email).to eq("sonicspeed129@gmail.com")
  end
end

describe User, '#password' do
  it "has an password" do
    # user = User.create(email: "sonicspeed129@gmail.com", password_digest: "Lindeman")
   	user = User.create(email: "qiheme@aol.com", password_digest: "Lindeman")

    expect(user.password_digest).to eq("Lindeman")
  end
end