require 'rails_helper'

RSpec.describe "incidentworkflows/new", type: :view do
  before(:each) do
    assign(:incidentworkflow, Incidentworkflow.new(
      incident: nil,
      workflowtemplate: nil
    ))
  end

  it "renders new incidentworkflow form" do
    render

    assert_select "form[action=?][method=?]", incidentworkflows_path, "post" do

      assert_select "input[name=?]", "incidentworkflow[incident_id]"

      assert_select "input[name=?]", "incidentworkflow[workflowtemplate_id]"
    end
  end
end
