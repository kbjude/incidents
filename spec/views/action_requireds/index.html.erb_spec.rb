require 'rails_helper'

RSpec.describe "action_requireds/index", type: :view do
  before(:each) do
    assign(:action_requireds, [
      ActionRequired.create!(
        name: "Name",
        phone: "Phone",
        address: "Address",
        category: "Category",
        ref_number: "Ref Number",
        remarks: "MyText"
      ),
      ActionRequired.create!(
        name: "Name",
        phone: "Phone",
        address: "Address",
        category: "Category",
        ref_number: "Ref Number",
        remarks: "MyText"
      )
    ])
  end

  it "renders a list of action_requireds" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Phone".to_s, count: 2
    assert_select "tr>td", text: "Address".to_s, count: 2
    assert_select "tr>td", text: "Category".to_s, count: 2
    assert_select "tr>td", text: "Ref Number".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
  end
end
