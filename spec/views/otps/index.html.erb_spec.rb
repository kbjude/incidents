require 'rails_helper'

RSpec.describe "otps/index", type: :view do
  before(:each) do
    assign(:otps, [
      Otp.create!(
        user: nil,
        code: "Code"
      ),
      Otp.create!(
        user: nil,
        code: "Code"
      )
    ])
  end

  it "renders a list of otps" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: "Code".to_s, count: 2
  end
end
