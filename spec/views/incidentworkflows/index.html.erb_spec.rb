require 'rails_helper'

RSpec.describe "incidentworkflows/index", type: :view do
  before(:each) do
    assign(:incidentworkflows, [
      Incidentworkflow.create!(
        incident: nil,
        workflowtemplate: nil
      ),
      Incidentworkflow.create!(
        incident: nil,
        workflowtemplate: nil
      )
    ])
  end

  it "renders a list of incidentworkflows" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
