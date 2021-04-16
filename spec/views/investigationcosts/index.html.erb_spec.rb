require 'rails_helper'

RSpec.describe "investigationcosts/index", type: :view do
  before(:each) do
    assign(:investigationcosts, [
      Investigationcost.create!(
        investigation: nil,
        item: "Item",
        amount: 2.5,
        currency: "Currency"
      ),
      Investigationcost.create!(
        investigation: nil,
        item: "Item",
        amount: 2.5,
        currency: "Currency"
      )
    ])
  end

  it "renders a list of investigationcosts" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: "Item".to_s, count: 2
    assert_select "tr>td", text: 2.5.to_s, count: 2
    assert_select "tr>td", text: "Currency".to_s, count: 2
  end
end
