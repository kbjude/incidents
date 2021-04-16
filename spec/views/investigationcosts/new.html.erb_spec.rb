require 'rails_helper'

RSpec.describe "investigationcosts/new", type: :view do
  before(:each) do
    assign(:investigationcost, Investigationcost.new(
      investigation: nil,
      item: "MyString",
      amount: 1.5,
      currency: "MyString"
    ))
  end

  it "renders new investigationcost form" do
    render

    assert_select "form[action=?][method=?]", investigationcosts_path, "post" do

      assert_select "input[name=?]", "investigationcost[investigation_id]"

      assert_select "input[name=?]", "investigationcost[item]"

      assert_select "input[name=?]", "investigationcost[amount]"

      assert_select "input[name=?]", "investigationcost[currency]"
    end
  end
end
