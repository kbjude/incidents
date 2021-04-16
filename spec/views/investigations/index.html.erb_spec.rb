require 'rails_helper'

RSpec.describe "investigations/index", type: :view do
  before(:each) do
    assign(:investigations, [
      Investigation.create!(
        incident: nil,
        user: nil,
        report_number: "Report Number",
        department: nil,
        status: "Status",
        reportable_to_legal: false
      ),
      Investigation.create!(
        incident: nil,
        user: nil,
        report_number: "Report Number",
        department: nil,
        status: "Status",
        reportable_to_legal: false
      )
    ])
  end

  it "renders a list of investigations" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: "Report Number".to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: "Status".to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
  end
end
