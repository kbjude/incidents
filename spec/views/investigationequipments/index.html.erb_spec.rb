require 'rails_helper'

RSpec.describe "investigationequipments/index", type: :view do
  before(:each) do
    assign(:investigationequipments, [
      Investigationequipment.create!(
        investigation: nil,
        equipment: "Equipment",
        description: "MyText"
      ),
      Investigationequipment.create!(
        investigation: nil,
        equipment: "Equipment",
        description: "MyText"
      )
    ])
  end

  it "renders a list of investigationequipments" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: "Equipment".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
  end
end
