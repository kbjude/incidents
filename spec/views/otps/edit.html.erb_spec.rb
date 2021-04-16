require 'rails_helper'

RSpec.describe "otps/edit", type: :view do
  before(:each) do
    @otp = assign(:otp, Otp.create!(
      user: nil,
      code: "MyString"
    ))
  end

  it "renders the edit otp form" do
    render

    assert_select "form[action=?][method=?]", otp_path(@otp), "post" do

      assert_select "input[name=?]", "otp[user_id]"

      assert_select "input[name=?]", "otp[code]"
    end
  end
end
