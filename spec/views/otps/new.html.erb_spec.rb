require 'rails_helper'

RSpec.describe "otps/new", type: :view do
  before(:each) do
    assign(:otp, Otp.new(
      user: nil,
      code: "MyString"
    ))
  end

  it "renders new otp form" do
    render

    assert_select "form[action=?][method=?]", otps_path, "post" do

      assert_select "input[name=?]", "otp[user_id]"

      assert_select "input[name=?]", "otp[code]"
    end
  end
end
