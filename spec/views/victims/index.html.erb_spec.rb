require 'rails_helper'

RSpec.describe "victims/index", type: :view do
  before(:each) do
    assign(:victims, [
      Victim.create!(
        incident: nil,
        name: "Name",
        contact: "Contact",
        remark: "MyText",
        role: "Role",
        employee: false,
        address: "Address",
        email: "Email",
        supervisor: "Supervisor"
      ),
      Victim.create!(
        incident: nil,
        name: "Name",
        contact: "Contact",
        remark: "MyText",
        role: "Role",
        employee: false,
        address: "Address",
        email: "Email",
        supervisor: "Supervisor"
      )
    ])
  end

  it "renders a list of victims" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Contact".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: "Role".to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
    assert_select "tr>td", text: "Address".to_s, count: 2
    assert_select "tr>td", text: "Email".to_s, count: 2
    assert_select "tr>td", text: "Supervisor".to_s, count: 2
  end
end
