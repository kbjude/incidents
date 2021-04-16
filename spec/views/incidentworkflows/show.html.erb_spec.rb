require 'rails_helper'

RSpec.describe "incidentworkflows/show", type: :view do
  before(:each) do
    @incidentworkflow = assign(:incidentworkflow, Incidentworkflow.create!(
      incident: nil,
      workflowtemplate: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
