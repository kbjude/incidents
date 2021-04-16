require 'rails_helper'

RSpec.describe "incidentworkflows/edit", type: :view do
  before(:each) do
    @incidentworkflow = assign(:incidentworkflow, Incidentworkflow.create!(
      incident: nil,
      workflowtemplate: nil
    ))
  end

  it "renders the edit incidentworkflow form" do
    render

    assert_select "form[action=?][method=?]", incidentworkflow_path(@incidentworkflow), "post" do

      assert_select "input[name=?]", "incidentworkflow[incident_id]"

      assert_select "input[name=?]", "incidentworkflow[workflowtemplate_id]"
    end
  end
end
