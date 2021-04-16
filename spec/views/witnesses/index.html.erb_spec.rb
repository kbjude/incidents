require 'rails_helper'

RSpec.describe "witnesses/index", type: :view do
  before(:each) do
    assign(:witnesses, [
      Witness.create!(
        incident: nil,
        name: "Name",
        contact: "Contact",
        remark: "MyText"
      ),
      Witness.create!(
        incident: nil,
        name: "Name",
        contact: "Contact",
        remark: "MyText"
      )
    ])
  end

  it "renders a list of witnesses" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Contact".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
  end
end
