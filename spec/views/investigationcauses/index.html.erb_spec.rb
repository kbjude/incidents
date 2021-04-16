require 'rails_helper'

RSpec.describe "investigationcauses/index", type: :view do
  before(:each) do
    assign(:investigationcauses, [
      Investigationcause.create!(
        investigation: nil,
        cause: nil
      ),
      Investigationcause.create!(
        investigation: nil,
        cause: nil
      )
    ])
  end

  it "renders a list of investigationcauses" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
