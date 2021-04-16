require 'rails_helper'

RSpec.describe "otps/show", type: :view do
  before(:each) do
    @otp = assign(:otp, Otp.create!(
      user: nil,
      code: "Code"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Code/)
  end
end
