require 'rails_helper'

RSpec.describe "investigationactions/index", type: :view do
  before(:each) do
    assign(:investigationactions, [
      Investigationaction.create!(
        investigation: nil,
        action: "Action",
        resposibility: "Resposibility"
      ),
      Investigationaction.create!(
        investigation: nil,
        action: "Action",
        resposibility: "Resposibility"
      )
    ])
  end

  it "renders a list of investigationactions" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: "Action".to_s, count: 2
    assert_select "tr>td", text: "Resposibility".to_s, count: 2
  end
end
