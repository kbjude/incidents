require 'rails_helper'

RSpec.describe "investigationcosts/edit", type: :view do
  before(:each) do
    @investigationcost = assign(:investigationcost, Investigationcost.create!(
      investigation: nil,
      item: "MyString",
      amount: 1.5,
      currency: "MyString"
    ))
  end

  it "renders the edit investigationcost form" do
    render

    assert_select "form[action=?][method=?]", investigationcost_path(@investigationcost), "post" do

      assert_select "input[name=?]", "investigationcost[investigation_id]"

      assert_select "input[name=?]", "investigationcost[item]"

      assert_select "input[name=?]", "investigationcost[amount]"

      assert_select "input[name=?]", "investigationcost[currency]"
    end
  end
end
