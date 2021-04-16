require 'rails_helper'

RSpec.describe "investigationclassifications/index", type: :view do
  before(:each) do
    assign(:investigationclassifications, [
      Investigationclassification.create!(
        investigation: nil,
        subclassification: nil
      ),
      Investigationclassification.create!(
        investigation: nil,
        subclassification: nil
      )
    ])
  end

  it "renders a list of investigationclassifications" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
