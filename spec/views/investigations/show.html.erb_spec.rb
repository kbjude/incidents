require 'rails_helper'

RSpec.describe "investigations/show", type: :view do
  before(:each) do
    @investigation = assign(:investigation, Investigation.create!(
      incident: nil,
      user: nil,
      report_number: "Report Number",
      department: nil,
      status: "Status",
      reportable_to_legal: false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Report Number/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Status/)
    expect(rendered).to match(/false/)
  end
end
